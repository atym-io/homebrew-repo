class Atymctl < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl/1.0.4/atymctl_darwin_arm64.tar.gz"
      sha256 "ff8c367d44149960a6d043958ae7cd5246d4e67d6845df40f7fd3bb3ab6335f1"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl/1.0.4/atymctl_darwin_amd64.tar.gz"
      sha256 "446b37540fb8bb6a5c074c666313f848b4c2a4db171f008f42157f0fd000f6b2"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
