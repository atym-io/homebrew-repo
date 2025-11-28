class Atym < Formula
  desc "Atym CLI"
  homepage "https://atym.io/" 
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.0/atym_darwin_arm64_v8.0.tar.gz"
      sha256 "7baeae6675735b978f78734c1b0c1cb5e18e3ca54fde6beb33a9122f01278f87"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.0/atym_darwin_amd64_v1.tar.gz"
      sha256 "c65ed7ad7c04cff5aa513c2f009fe294a1439328895f909596bad591b3f7cba8"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end