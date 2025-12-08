class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.1"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.1/atym_darwin_arm64.tar.gz"
      sha256 "f744f9f68b7175a9296cc4de825823c4dd6034385cd8ca9ae7c043dc544af4fd"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.1/atym_darwin_amd64.tar.gz"
      sha256 "75841fa94f49401c6d5bed1384029140150d2d77719de3c2399e3d82aad6480d"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
