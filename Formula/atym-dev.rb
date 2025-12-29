class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-beta6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta6/atym_darwin_arm64.tar.gz"
      sha256 "ee42e13b3911d2e6fbd53aa55609eefd1a317d3800cf862f330f0b06420b3f31"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta6/atym_darwin_amd64.tar.gz"
      sha256 "1b7832cd00dd04d4b9fd29afa54bb27fd6008d52f5e8e426d657de377b02f584"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
