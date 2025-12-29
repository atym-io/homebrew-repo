class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.7-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc1/atym_darwin_arm64.tar.gz"
      sha256 "0ad7bea900dcd708c1cec67cef06b862a83903e3c7b0484b6739f2a95345922e"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc1/atym_darwin_amd64.tar.gz"
      sha256 "fbcd83da3e2851627ec8b5c1208fae43621e365e0bfd91e708658593a6093598"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
