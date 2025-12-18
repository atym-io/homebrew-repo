class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta1/atym_darwin_arm64.tar.gz"
      sha256 "540a51d4590c01d3cb26bcf149c83932eed992850bc91c34c758557868e646bb"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta1/atym_darwin_amd64.tar.gz"
      sha256 "91859880bc85dce08a45d178ca9566735f9d55c506065cc69eea260306e81474"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
