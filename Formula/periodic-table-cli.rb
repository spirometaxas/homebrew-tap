class PeriodicTableCli < Formula
  include Language::Python::Virtualenv

  desc "An interactive Periodic Table of Elements app for the console!"
  homepage "https://spirometaxas.com/projects/periodic-table-cli/"
  url "https://files.pythonhosted.org/packages/f2/b3/de99f3bd627440d8fddfc3765ec3ca4fca816d6f237e0f0fefe95c065e8f/periodic_table_cli-2.1.2.tar.gz"
  sha256 "1678af018f5131ec466cd6ecd05cf3330572cba65c9ea481e33c4303204ddef3"
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
    assert_match "v2.1.2 (Python)", output
  end
end
