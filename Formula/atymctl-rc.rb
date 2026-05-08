class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc7/atymctl_darwin_arm64.tar.gz"
      sha256 "138933612984392247901ed0d32ef361828a1f736d73ba84fa29aae98496a18a"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc7/atymctl_darwin_amd64.tar.gz"
      sha256 "6f2b0766265ac0cfcc9705f085a9e1ade47830d7389ff4faf3b53c3b5fe44e84"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
