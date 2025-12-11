class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.2"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.2/atym_darwin_arm64.tar.gz"
      sha256 "2ddb7d114715efa85e0e774a529468224a13516df505f9faccd131a5941d9157"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.2/atym_darwin_amd64.tar.gz"
      sha256 "9b86dafd6c7a1b5632d89b6bfe57f8dc190378d61a83d4b2b6d5c8f916b59c4e"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
