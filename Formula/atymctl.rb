class Atymctl < Formula
  homepage "https://atym.io/"
  desc "AtymCtl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl/1.0.0/atymctl_darwin_arm64.tar.gz"
      sha256 "2eafa7b9659f211dfc7fe95f8e8005184bb76fdf54ee7bd401d07892f7dcc924"
    else
      url "https://darwinpackagerepo.blob.core.windows.net/packages/atymctl/1.0.0/atymctl_darwin_amd64.tar.gz"
      sha256 "96cf5b049c7be34c3d8998f3cbd632ea52b7c4ff49107f8c88b85b62c086a3de"
    end
  end

  def install
    bin.install "atymctl"
  end

  test do
    system "#{bin}/atymctl", "--version"
  end
end
