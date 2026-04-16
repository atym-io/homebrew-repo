class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc2/atymctl_darwin_arm64.tar.gz"
      sha256 "a049e711f1ff6d5a2af366eecc35740171b2b2ace5b334216923ed87d812ed7a"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc2/atymctl_darwin_amd64.tar.gz"
      sha256 "41a8ec48600bdeb1869abdf5d9610ff50348ba2b42500635e52afd6ec9442d1c"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
