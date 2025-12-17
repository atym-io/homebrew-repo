class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-beta2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta2/atym_darwin_arm64.tar.gz"
      sha256 "22ea75f75d7bfec19e5da6278b3064776572569a2d6036f795f4a9c06d098bc2"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta2/atym_darwin_amd64.tar.gz"
      sha256 "24857d78e064052d9b9978adc4c4c37fd704ce2a9993ad6cbbcee98a22f9a795"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
