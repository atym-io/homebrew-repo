class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.1-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.1-rc1/atymctl_darwin_arm64.tar.gz"
      sha256 "25f9cc35de8a399a20eaf2fe40446bde4fc38a50e1ee8a3b5e81ffee1190a799"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.1-rc1/atymctl_darwin_amd64.tar.gz"
      sha256 "7be3cc73630b92d03b90da24a8a25520d71bd934793d1b2dd788240b69e7cff8"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
