class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.5/atym_darwin_arm64.tar.gz"
      sha256 "200305d88e1c580c6e698b3aece89f72652d2584f3050da07ea68abadaea011b"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.5/atym_darwin_amd64.tar.gz"
      sha256 "c0ce5c545b33b94a9f61239715e3ab3fe54a04ae2b8cef396ad9a6eeb6b10785"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
