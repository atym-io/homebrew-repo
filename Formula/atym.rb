class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.4/atym_darwin_arm64.tar.gz"
      sha256 "96367846e6f8afa6c41c76c04a9a2e16389f930bd97fb52889162d6de2bf60d0"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.4/atym_darwin_amd64.tar.gz"
      sha256 "7f1ac7782da69b79a9f7f7f1565baa86374c4ebcc71b22995a75a0b61011b60d"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
