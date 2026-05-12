class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc10/atymctl_darwin_arm64.tar.gz"
      sha256 "769b0621f483aaa0eb13e54b5b96637e79b2fcbc425b352d390a7d942c0284a2"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc10/atymctl_darwin_amd64.tar.gz"
      sha256 "a06e44273c6f175df3041f8bd25d4d8e3ff5ac2906605dca187fffe31364ea3f"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
