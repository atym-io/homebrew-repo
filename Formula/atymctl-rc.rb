class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc4/atymctl_darwin_arm64.tar.gz"
      sha256 "053f5aa8502799e33a3d41c7a34d2925170888aba407244cc3e62b38bcb6d408"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc4/atymctl_darwin_amd64.tar.gz"
      sha256 "125cd95518a56add913c91200a159704cbe41a1277810d6368a115fc26509589"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
