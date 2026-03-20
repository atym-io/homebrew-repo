class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.7-rc6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc6/atym_darwin_arm64.tar.gz"
      sha256 "eabb1acda53822d88eff11ecd007c461ba13305bb7ec5e5cebc181a0c44e9f73"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc6/atym_darwin_amd64.tar.gz"
      sha256 "6674f976954ac2509cb6a18db2e8599e8636b1c9f426fabe947ae11cbe7dd71d"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
