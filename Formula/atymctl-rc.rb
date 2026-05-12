class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc11/atymctl_darwin_arm64.tar.gz"
      sha256 "eab51448faa990ea1002294771a117b1c73cb9e23abdba636fa24c54e2138b20"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc11/atymctl_darwin_amd64.tar.gz"
      sha256 "1b19511af65170e0efc9d4c75619c8f587afcbf5bbd21a0fe64c4d1316a8ad01"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
