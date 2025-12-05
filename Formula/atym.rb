class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.14"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.14/atym_darwin_arm64.tar.gz"
      sha256 "cc2f68112d4297ef202410329f51da2285c730918487d3f9b1e588bfc52751d9"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.14/atym_darwin_amd64.tar.gz"
      sha256 "41879fefc1c3e898406cff6a5ef9c60b4c63910617d41797681ce1eb9664c625"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
