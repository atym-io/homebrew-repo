class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.5-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.5-rc1/atym_darwin_arm64.tar.gz"
      sha256 "4306d9b31ae279e73238d328d8eda9a341bf70bb323ae1a518871a1610316343"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.5-rc1/atym_darwin_amd64.tar.gz"
      sha256 "7436c5f91171909067e0e8a0002f89bbee7752059200eda36b5169f84d154841"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
