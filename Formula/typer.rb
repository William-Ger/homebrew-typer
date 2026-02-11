class Typer < Formula
  include Language::Python::Virtualenv

  desc "Typing practice in your terminal — like monkeytype for the CLI"
  homepage "https://github.com/William-Ger/typer"
  url "https://github.com/William-Ger/typer/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "29f2209372cd0edfd5057a6266a5b55f725cff0097b7ba78468e4eabf42c74b5"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "typer", shell_output("#{bin}/typer --help")
  end
end
