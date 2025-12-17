class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-rc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.4-rc2/atym_darwin_arm64.tar.gz"
      sha256 "b9c183bae284ec2e4d68847de7afed130ace09622499693d69dda194591d9459"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.4-rc2/atym_darwin_amd64.tar.gz"
      sha256 "c9ca94f9d78d4173b2c6d6ae5343c0b4295901ff6ce2b0dbd126e1a52a5d6227"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
