class AtymctlDev < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.0-beta3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-dev/1.0.0-beta3/atymctl_darwin_arm64.tar.gz"
      sha256 "0fe0eec678e1f1df282b3e1a49dbb6cefa0f48523b436eb91a14b07722dc4aba"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-dev/1.0.0-beta3/atymctl_darwin_amd64.tar.gz"
      sha256 "6641e626d21a705bb4104dcf1ec84e6e9634dfb4103e9f51808f8b4b71ba02b9"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
