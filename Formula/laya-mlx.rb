class LayaMlx < Formula
  include Language::Python::Virtualenv

  desc "Native MLX inference for Laya typed decision models"
  homepage "https://github.com/mizorewww/laya-mlx"
  url "https://files.pythonhosted.org/packages/88/18/56a244e4196db45b63fe51a42ee31480db97f8d2f3810b546fbac42f2bac/laya_mlx-0.1.0.tar.gz"
  sha256 "856a9e23d5c6f26e6e845d2c25dd9a75039086bb9b58fda2fbcaf6509b727da7"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage:", shell_output("#{bin}/laya-mlx --help")
  end
end
