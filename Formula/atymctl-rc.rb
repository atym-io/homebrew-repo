class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc1/atymctl_darwin_arm64.tar.gz"
      sha256 "e680503f877eb1776b7da73297fc5c121664397c4b3dc7e73369e5f5eddaf117"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc1/atymctl_darwin_amd64.tar.gz"
      sha256 "c61a8e8c1cd792e32108a711072c3683e542e07d8c1c7b0222e8cdaabb548fb0"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
