class Atym-rc < Formula
  desc "Atym (RC) CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-rc"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.4-rc/atym_darwin_arm64.tar.gz"
      sha256 "8a6ee5daa471804da54e199c5cf6d744739290a884ca4436cea04caef4b92088"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.4-rc/atym_darwin_amd64.tar.gz"
      sha256 "895317f95b3f009d767362d944a0af5933d1919225ee62bd2875e88bb21bfcd4"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
