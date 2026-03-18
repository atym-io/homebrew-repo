class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.7-rc5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc5/atym_darwin_arm64.tar.gz"
      sha256 "d09fa696202d63af24572e3534a9a87d9b35f326a90c42ffadb76691582d3925"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc5/atym_darwin_amd64.tar.gz"
      sha256 "f9226e34a4c4751e6131a9140d3cd8e4724656de5b308ed2ac609f43d59d8892"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
