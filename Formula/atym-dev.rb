class AtymDev < Formula
  desc "Atym CLI - WebAssembly container runtime"
  homepage "https://atym.io/"
  version "1.0.6-beta3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta3/atym_darwin_arm64.tar.gz"
      sha256 "8350ebe61c9d0bf5dee535b2cec6f378a3ff9926f8876b863d3e744fe6809637"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atym-dev/1.0.6-beta3/atym_darwin_amd64.tar.gz"
      sha256 "5ae236ee324035897120dc935a1aaff67e5c979465f91bbe4e90657dd233ed51"
    end
  end

  def install
    bin.install "atym"
  end

  test do
    system "#{bin}/atym", "--version"
  end
end
