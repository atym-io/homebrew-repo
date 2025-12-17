class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta/atym_darwin_arm64.tar.gz"
      sha256 "1b1af2e38819a63bf867e66367c9fe0d2d986bd6a1ec039dc38e436fe8ea20cb"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta/atym_darwin_amd64.tar.gz"
      sha256 "78068336030846193db7c12940d2b1cd6674614bfc138ff2108d37931de706d5"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
