class PeriodicTableCli < Formula
  include Language::Python::Virtualenv

  desc "An interactive Periodic Table of Elements app for the console!"
  homepage "https://spirometaxas.com/projects/periodic-table-cli/"
  url "https://files.pythonhosted.org/packages/source/p/periodic_table_cli/periodic_table_cli-2.1.3.tar.gz"
  sha256 "89ec4d321254fb88b7ff06fc85d0c030961b2523fc7f46cfa0007ec3a0638cf5"
  license "MIT"

  depends_on "python@3.12"

  livecheck do
    url :stable
    strategy :pypi
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # Verify installation by printing the version info
    output = shell_output("#{bin}/periodic-table-cli --version", 1)
    assert_match "v2.1.3 (Python)", output
  end
end
