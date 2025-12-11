class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.3"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.3/atym_darwin_arm64.tar.gz"
      sha256 "eeb4350b8725e51917e57f124bf25dd95703a75ccc469650dfdd36fda08363da"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.3/atym_darwin_amd64.tar.gz"
      sha256 "453dbac0b32e89f067c7468aa11865578b2b708f7c5f882b08e1f68c3de3774a"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
