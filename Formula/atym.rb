class Atym < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.3"
  license "MIT"  # Adjust to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.3/atym_darwin_arm64.tar.gz"
      sha256 "9f9b8e4ca28a87a599443ba76a17722cda5cc7166086a27d9cf9ccba69415490"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym/1.0.3/atym_darwin_amd64.tar.gz"
      sha256 "a18ce10fd1955e6af191cec14cb33fa69a8368426c2c3208f76d7bc7699bed63"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
