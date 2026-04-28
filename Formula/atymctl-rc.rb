class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc3/atymctl_darwin_arm64.tar.gz"
      sha256 "43c8957fc69dd231a86fe0b066e7b29e26ce1556d1dc539be9916ad2e08e323f"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc3/atymctl_darwin_amd64.tar.gz"
      sha256 "de8f6e49437cc915596658674d4dbf2a9681a1a7cc9b4dd3e4e908c19f5c6f8e"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
