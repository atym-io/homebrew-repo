class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.0-beta3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.0-beta3/atym_darwin_arm64.tar.gz"
      sha256 "a40fe78f0f5690ee46af192b51c151aaaae5949f60ec3b5f8b8d733c977b363f"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.0-beta3/atym_darwin_amd64.tar.gz"
      sha256 "054b97e1a3059ee49fcb121dbf27022962760cba9dbd0616ec1c107081b1a717"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
