class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.1"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.1/atym_darwin_arm64.tar.gz"
      sha256 "3b7b5f8ce90ae9e29819f4da2eab4ef81f959f2f1eaf92b9abe5350860eae69c"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.1/atym_darwin_amd64.tar.gz"
      sha256 "016633ed7027dab6831127d5d5b928b17bcdc433ad95b39295c5c4e42e9acea2"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
