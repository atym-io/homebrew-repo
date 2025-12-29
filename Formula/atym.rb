class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.6/atym_darwin_arm64.tar.gz"
      sha256 "4608fd4b38fe9a0473986687d52bcc4ca8d5bce3e3c4e2ac9ad4792d90766470"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.6/atym_darwin_amd64.tar.gz"
      sha256 "63130c60b19302dc92ff048577902fca0aaffbb8dfa230f557b5f36a0a76f746"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
