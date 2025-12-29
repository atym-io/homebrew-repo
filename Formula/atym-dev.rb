class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-beta4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta4/atym_darwin_arm64.tar.gz"
      sha256 "0b5a8eaacc9ed96403f582ce9c4b17ace54d11f80aa950e158bbdb83b041979f"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta4/atym_darwin_amd64.tar.gz"
      sha256 "05c282c9e765579894c13a69c5acaed919adb21d814fbdbe73423b9d643f7217"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
