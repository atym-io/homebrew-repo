class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta/atym_darwin_arm64.tar.gz"
      sha256 "1c8c67af246f70f49b592be47e96d317bba39b6748a9da29330407ce6575b382"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta/atym_darwin_amd64.tar.gz"
      sha256 "e62fc2f54e9537a4058fe3c2a292e8606c308a93512da3b8f0e77f76917521fc"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
