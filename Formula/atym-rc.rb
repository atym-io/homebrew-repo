class AtymRc < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.7-rc4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc4/atym_darwin_arm64.tar.gz"
      sha256 "7fb81c57bf84f7773c54df4750cb02c05246e0b638be77fcaa072e8996e038ff"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-rc/1.0.7-rc4/atym_darwin_amd64.tar.gz"
      sha256 "402083a2326493e7dffd1f3bbb41c0536c1763728f92615e2213b00b0572b0cc"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
