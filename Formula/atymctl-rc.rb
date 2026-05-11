class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc8/atymctl_darwin_arm64.tar.gz"
      sha256 "4ec8733c69da3d72d41ff7734d331de9a6c4eb25dbf6812d758f6a713a69f30c"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc8/atymctl_darwin_amd64.tar.gz"
      sha256 "9ffc315def5e79bbab5d2cd0c10f7a3c7a09e16febb3162b502e4ecebb1a2f0f"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
