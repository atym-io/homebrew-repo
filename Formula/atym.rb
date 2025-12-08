class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.1"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.1/atym_darwin_arm64.tar.gz"
      sha256 "a7c2b21a777b68926b8679e098427314e6015a553366030457c9302ef0b41553"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.1/atym_darwin_amd64.tar.gz"
      sha256 "732327858bdf4b53b74348f7244a5e53da06bf3bb3d8e03f66c8ebafcc6ab357"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
