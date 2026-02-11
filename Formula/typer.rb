class Typer < Formula
  include Language::Python::Virtualenv

  desc "Typing practice in your terminal — like monkeytype for the CLI"
  homepage "https://github.com/William-Ger/typer"
  url "https://github.com/William-Ger/typer/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "0cfe8eb55b3bdc8f4b5c1c8437e8cb66bf37602ae7e055b0a50cf98bc1e54016"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "typer", shell_output("#{bin}/typer --help")
  end
end
