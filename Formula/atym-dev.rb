class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-beta2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta2/atym_darwin_arm64.tar.gz"
      sha256 "ac6005fd7e9a010ee7d4ee62ca9a712f86e8323a9de554229971fe64bdd50567"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta2/atym_darwin_amd64.tar.gz"
      sha256 "76362678be8a1d10a053f5c74447790db251cd754951078c243eb328000b8fb1"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
