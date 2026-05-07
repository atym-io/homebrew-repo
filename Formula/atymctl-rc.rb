class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc5/atymctl_darwin_arm64.tar.gz"
      sha256 "a3f9068a606f60f2bd39e1c3a45f5644e869c5c0f8d318206e945a9838a39c3f"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc5/atymctl_darwin_amd64.tar.gz"
      sha256 "94d70e57d2e002f15e162fdaf7bdf21f50fd2dfcfa8166961ee8c9b1c338edc3"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
