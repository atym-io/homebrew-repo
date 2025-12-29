class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-rc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.6-rc2/atym_darwin_arm64.tar.gz"
      sha256 "bbe6a8f3be53a97de381f874a32dab2c8ee6346551420f47c8b241bf21731e81"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.6-rc2/atym_darwin_amd64.tar.gz"
      sha256 "9efc2e5c592bf2870fefd8ad02ccf4d4eee7b1903e328fb4fbb988fa92c9b554"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
