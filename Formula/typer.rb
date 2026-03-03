class Typer < Formula
  include Language::Python::Virtualenv

  desc "Typing practice in your terminal — like monkeytype for the CLI"
  homepage "https://github.com/William-Ger/typer"
  url "https://github.com/William-Ger/typer/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "ef2830d65cd47c92e89cbf1ff8e52821cbbecc7efffe9946e76d4f749b49afa8"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "typer", shell_output("#{bin}/typer --help")
  end
end
