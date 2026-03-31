class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.0-rc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.0-rc2/atymctl_darwin_arm64.tar.gz"
      sha256 "fbc990ff55ae2958684fb983973613bf0273c6ece56ac26f653d0ef507fbc1a7"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.0-rc2/atymctl_darwin_amd64.tar.gz"
      sha256 "e1651b4cd880b5f27e610271376e297725505df9f18083c16eb7801976345821"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
