#!/usr/bin/env python3
"""HTTP service for a local laya-mlx model checkpoint."""

import json
import logging
import os
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from time import perf_counter
from urllib.parse import urlparse

import laya_mlx


logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] laya: %(message)s")
logger = logging.getLogger("laya")


class LayaServer(ThreadingHTTPServer):
    def __init__(self, address, handler, agent, model_path):
        super().__init__(address, handler)
        self.agent = agent
        self.model_path = str(model_path)


class Handler(BaseHTTPRequestHandler):
    server: LayaServer

    def do_GET(self):
        if urlparse(self.path).path != "/health":
            self._response(404, {"error": "not found"})
            return

        self._response(
            200,
            {
                "status": "ok",
                "backend": "mlx",
                "device": "Apple Silicon Metal GPU",
                "model": self.server.model_path,
                "version": "0.1.0",
            },
        )

    def do_POST(self):
        try:
            request = self._request_json()
            route = urlparse(self.path).path
            started_at = perf_counter()

            if route in ("/v1/systemone", "/predict"):
                response = self._predict(request, started_at)
            else:
                self._response(404, {"error": "not found"})
                return
        except (KeyError, TypeError, ValueError) as error:
            self._response(400, {"error": str(error)})
            return
        except Exception as error:
            logger.exception("Request failed")
            self._response(500, {"error": str(error)})
            return

        self._response(200, response)

    def _predict(self, request, started_at):
        result = self.server.agent.predict(request["state"], request["questions"])
        return {
            "answers": result.get("answers", result),
            "latency_ms": self._latency(started_at),
            "backend": "mlx",
            "model": self.server.model_path,
        }

    def _request_json(self):
        length = int(self.headers.get("Content-Length", 0))
        return json.loads(self.rfile.read(length))

    def _latency(self, started_at):
        return round((perf_counter() - started_at) * 1000, 2)

    def _response(self, status, body):
        encoded = json.dumps(body).encode()
        self.send_response(status)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(encoded)))
        self.end_headers()
        self.wfile.write(encoded)

    def log_message(self, format, *args):
        logger.info("%s - %s", self.address_string(), format % args)


def main():
    model_path = Path(os.environ.get("LAYA_MODEL", "/opt/homebrew/var/laya-mlx/model"))
    if not model_path.is_dir():
        raise SystemExit(f"LAYA_MODEL does not exist or is not a directory: {model_path}")

    host = os.environ.get("LAYA_HOST", "127.0.0.1")
    port = int(os.environ.get("LAYA_PORT", "12997"))
    logger.info("Loading Laya MLX model from: %s", model_path)
    agent = laya_mlx.load(model_path, dtype="float16")
    logger.info("Laya MLX model loaded successfully")
    server = LayaServer((host, port), Handler, agent, model_path)
    logger.info("Listening on %s:%s", host, port)
    server.serve_forever()


if __name__ == "__main__":
    main()
