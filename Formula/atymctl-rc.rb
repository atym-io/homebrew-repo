class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc9/atymctl_darwin_arm64.tar.gz"
      sha256 "9919bca2f0ace3a9838ca2dd876389f9fa68f10803ff25f0d6f31c8692a651c7"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc9/atymctl_darwin_amd64.tar.gz"
      sha256 "7d537ebef2d566e5d3a7a28eaa0a4492f13d154b015e51dc28e8ab08879a7830"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
