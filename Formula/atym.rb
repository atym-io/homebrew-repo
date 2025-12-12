class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.2"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.2/atym_darwin_arm64.tar.gz"
      sha256 "d1ab77f26b7ecbc05186354e445c4b46d810d2f890b199eaa7f110acfc806986"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.2/atym_darwin_amd64.tar.gz"
      sha256 "e6704cabea10bfb00da63783e3987a2313dc8a632893ed58705939635f876849"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
