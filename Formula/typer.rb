class Typer < Formula
  include Language::Python::Virtualenv

  desc "Typing practice in your terminal — like monkeytype for the CLI"
  homepage "https://github.com/William-Ger/typer"
  url "https://github.com/William-Ger/typer/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "a37283b8ca2cac6e7ce19b7369a71ce0e579e36d2c6dff66d35c4058c1fea4dc"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "typer", shell_output("#{bin}/typer --help")
  end
end
