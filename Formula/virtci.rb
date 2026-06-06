class Virtci < Formula
  desc "Virtual machine CI runner"
  homepage "https://www.virtci.com"
  url "https://github.com/virtci/virtci/releases/download/v0.3.0/virtci-macos-multiarch.tar.gz"
  sha256 "3e6a295e5e34c5c4bb338a9f3cceb428ed03e63f2f0912e6970b3d8662af415a"
  version "0.3.0"
  
  depends_on :macos
  depends_on "qemu"
  depends_on "swtpm"
  depends_on "cirruslabs/cli/tart"
  
  def install
    bin.install "virtci"
  end
  
  test do
    system "#{bin}/virtci", "--version"
  end
end
