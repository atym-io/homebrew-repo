class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.7-rc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc2/atym_darwin_arm64.tar.gz"
      sha256 "41ee7b7ed7b5a67266f528b0c86f87ba992b48a26175f681d15b1a1208e3971d"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc2/atym_darwin_amd64.tar.gz"
      sha256 "bfd87972fa89da64c2d8d0d9571b6d0f00d565a45bc3b5864a037b85ef894607"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
