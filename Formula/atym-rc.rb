class Atym-rc < Formula
  desc "Atym (RC) CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-rc1"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.4-rc1/atym_darwin_arm64.tar.gz"
      sha256 "5ccfa439834b69a9cdc0527e6ca1a50b0721e28f38f3ff84272043a6e5b9dfb8"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.4-rc1/atym_darwin_amd64.tar.gz"
      sha256 "2e4ef0eb56348a0369687b8eaf9b0a7d756d0be40595dcc47b15c2a92413b18f"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
