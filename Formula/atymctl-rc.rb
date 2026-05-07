class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc6/atymctl_darwin_arm64.tar.gz"
      sha256 "f40b3dba2ef3b035e829d9c5f3a6c85ace419c4ff5b14402d5479a4d33d70f80"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc6/atymctl_darwin_amd64.tar.gz"
      sha256 "4c114ebc1ea3539a17ab9fc5f4928863860552d87ae983c716f0263be4bd9c6e"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
