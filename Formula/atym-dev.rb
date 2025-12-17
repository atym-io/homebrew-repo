class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta/atym_darwin_arm64.tar.gz"
      sha256 "6e3d13c0425834d3e938b431886bd9a336ebd18b52f888404a12bb09de3e235f"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta/atym_darwin_amd64.tar.gz"
      sha256 "537f53f534992d5b4938716e8aef763d26febb4299f902cb2f9140913d0ce6f6"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
