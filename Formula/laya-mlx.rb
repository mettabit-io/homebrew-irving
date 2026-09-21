class LayaMlx < Formula
  include Language::Python::Virtualenv

  desc "Native MLX inference for Laya typed decision models"
  homepage "https://github.com/mizorewww/laya-mlx"
  url "https://files.pythonhosted.org/packages/88/18/56a244e4196db45b63fe51a42ee31480db97f8d2f3810b546fbac42f2bac/laya_mlx-0.1.0.tar.gz"
  sha256 "856a9e23d5c6f26e6e845d2c25dd9a75039086bb9b58fda2fbcaf6509b727da7"
  license "Apache-2.0"
  revision 1

  depends_on arch: :arm64
  depends_on "libyaml"
  depends_on macos: :sonoma
  depends_on "python@3.13"

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/1b/cf/d98dd561d6d0d7b7d7a64d1563f8aaaa7c235daee41c1c9bcc3da62420ed/huggingface_hub-1.32.0-py3-none-any.whl"
    sha256 "b0c7c80561969d9cdacdd55fce67ba9584cca0b9d4ea80957a3a5c1445fac5c8"
  end
  resource "click" do
    url "https://files.pythonhosted.org/packages/58/50/6c0d534c5f134586a8e1ba4e330569e32f057e33372ae556463212fb4cd3/click-8.5.0-py3-none-any.whl"
    sha256 "255bc9599cf7748b4b1a446ccc735421bd08a2ae529a8b88597d3de5664ee360"
  end
  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/4b/69/55b8dcf636142ae660fec1869fcac14c4da2e8412e14d6eee1523be77e9f/hf_xet-1.6.0-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "f0906082d9932ae0c0057fa194041c22b4e2cdb46b2592ef3b91f020d62a081a"
  end
  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end
  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end
  resource "mlx" do
    url "https://files.pythonhosted.org/packages/5e/d7/0f9717acf577621ff0899f311eaa16abbfd2ee5a5c2156313f49d080cb5f/mlx-0.32.2-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "65d3d29b66045ed8dd2d8e437c8770de325843c364f7b7c38cd8ae90a7eec854"
  end
  resource "mlx-metal" do
    url "https://files.pythonhosted.org/packages/f7/ab/ba1952908c5d2a5070cf1cfbfea0161c4751ea62299e2776819810917483/mlx_metal-0.32.2-py3-none-macosx_14_0_arm64.whl"
    sha256 "3825fff379dbc107dd3413e564a06caeaa24819910ec49c0439e454c06a1b9b8"
  end
  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/67/49/22da045a91732384d3a3771816bf188dc5a1f702c32e635afa7c679c0bef/tokenizers-0.23.2-cp310-abi3-macosx_11_0_arm64.whl"
    sha256 "986670e43691469dcee610ea0f846f91a8f84e91fc6f7a48d4c064414c0ec2bf"
  end
  resource "filelock" do
    url "https://files.pythonhosted.org/packages/29/33/af0635ab07fe83b1788a1dbe370ff3e226062495a998335cb18a1cac81aa/filelock-4.0.1-py3-none-any.whl"
    sha256 "481a321a27bef441e23c53371c6abc8d7d16e26b97090074ba44f7538a3fd55a"
  end
  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/6c/c0/a98505f18594f1bce828bb159cec0fcf9860562f1a2c85913409fc8f3d9e/fsspec-2026.9.0-py3-none-any.whl"
    sha256 "8dd6e646e99ea382bd85f97a45e6b526a442d79423a7dc673f1e2756d05fcb5f"
  end
  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end
  resource "numpy" do
    url "https://files.pythonhosted.org/packages/ab/2a/98282aa5b8f58b1157d440bb6282eed47e3632a5de53a714fbab17e659fe/numpy-2.5.3-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "f9a2353b37a1a9e78fd82b27ad7e2a32a2d036604d18f02b05e3136c62ca3b09"
  end
  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end
  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
  end
  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a7/03/921a3d3c75785aca9ebfbfcabfbc3a1be12e2ab5265deb026d55a5a3f83e/tqdm-4.70.1-py3-none-any.whl"
    sha256 "c293e525e6fef9c20e8728fd4612df02a0aa31bb5fe91ecd93e123b1b7bffa73"
  end
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/12/b8/4bd346e22b28902df4d651910f5242c28d84e4a5c2435ca5c3f797ed7e2e/anyio-4.15.1-py3-none-any.whl"
    sha256 "6152fdbbf9a77fdec97731721bebf7c4c44f7c29b424b0065826173efc7ed101"
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/58/a2/bb081bab032533a855d44de1d56f8e8426114ff1ba5d1f07a438a0a654f8/idna-3.20-py3-none-any.whl"
    sha256 "ab7ae7122974553370f0bdb919e1a960b2cd1bc1ef0276416d896db81c14582c"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end
  resource "laya-mlx-server" do
    url "https://raw.githubusercontent.com/mettabit-io/homebrew-irving/1f523b9/server/laya_mlx_server.py"
    sha256 "b19945ea5aa3e9630f37bd85d853a3daa1d1c44992ca279dfe3ee652a3c4940c"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")

    resources.reject { |resource| resource.name == "laya-mlx-server" }.each do |resource|
      resource.stage do
        venv.pip_install Pathname.pwd/resource.downloader.basename
      end
    end

    venv.pip_install_and_link buildpath
    resource("laya-mlx-server").stage do
      libexec.install "laya_mlx_server.py"
    end
    (bin/"laya-mlx-server").write <<~SH
      #!/bin/bash
      exec "#{libexec}/bin/python" "#{libexec}/laya_mlx_server.py" "$@"
    SH
    (bin/"laya-mlx-server").chmod 0755
  end

  service do
    run [opt_libexec/"bin/python", opt_libexec/"laya_mlx_server.py"]
    environment_variables LAYA_HOST:  "127.0.0.1",
                          LAYA_MODEL: var/"laya-mlx/model",
                          LAYA_PORT:  "12997"
    keep_alive successful_exit: false
    working_dir var/"laya-mlx"
    log_path var/"log/laya-mlx.log"
    error_log_path var/"log/laya-mlx.log"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/laya-mlx --help")
    assert_path_exists libexec/"laya_mlx_server.py"
  end
end
