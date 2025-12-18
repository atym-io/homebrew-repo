class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-rc1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.6-rc1/atym_darwin_arm64.tar.gz"
      sha256 "f710be8e23473255231e4bf69a82482b8e75857f9d5f29268e6bf31c75734bc1"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.6-rc1/atym_darwin_amd64.tar.gz"
      sha256 "42e9028e11071bdfd089c62380ec282f5e85c78a4ace6deb1c273028cf039d07"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
