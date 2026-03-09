class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.7-rc3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc3/atym_darwin_arm64.tar.gz"
      sha256 "4373f54c77a604464fa41a6a8bd4458aaa12d53b4ddbc51ddb40ca2c56a989f7"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc3/atym_darwin_amd64.tar.gz"
      sha256 "a64cea7d72706d209b062a4519c2b401b210402a13034ccd56f93ef9ef47909a"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
