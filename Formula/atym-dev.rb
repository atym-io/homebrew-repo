class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta1/atym_darwin_arm64.tar.gz"
      sha256 "c56c65f9bbde326d974da86913201315910299ba8e3dc8f114dbb29bfcd5a84e"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta1/atym_darwin_amd64.tar.gz"
      sha256 "54a760e8c2e2ee7bb2c2e6730299a2def2c8e790cd0f2e68afc413a3af7930ac"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
