class Typer < Formula
  include Language::Python::Virtualenv

  desc "Typing practice in your terminal — like monkeytype for the CLI"
  homepage "https://github.com/William-Ger/typer"
  url "https://github.com/William-Ger/typer/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "ed020418deece3784d7eca4ffdfebd4000b87e4c6c7a8f2b87b3953510ede586"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "typer", shell_output("#{bin}/typer --help")
  end
end
