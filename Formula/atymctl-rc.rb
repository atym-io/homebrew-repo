class AtymctlRc < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.5-rc12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc12/atymctl_darwin_arm64.tar.gz"
      sha256 "8c8b3001600659b55ab4630f1e85e11dcd92ab9fb7caa090e0d690a816d6e9e5"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl-rc/1.0.5-rc12/atymctl_darwin_amd64.tar.gz"
      sha256 "6eacb434702ac620ba2434682e50d7c4e04020f21c36afc86c3a07e2010bdf6d"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
