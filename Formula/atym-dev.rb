class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.4-beta2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta2/atym_darwin_arm64.tar.gz"
      sha256 "86dacf2cb65d8a46db08ecaa66a4f5e563888ecba428b007acefe2f613512ac6"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.4-beta2/atym_darwin_amd64.tar.gz"
      sha256 "d84e1e57a7bfbc0389413ee404bd658ec2618dd0ab07a56e75f0cc51805395c5"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
