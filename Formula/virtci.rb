class Virtci < Formula
  desc "Virtual machine CI runner"
  homepage "https://www.virtci.com"
  url "https://github.com/virtci/virtci/releases/download/v0.1.0/virtci-macos-multiarch.tar.gz"
  sha256 "d152be6adafdb0db75a991aa9e4313458e7a3703c6fb6c4b7bdfca98d3d6b0fb"
  version "0.1.0"
  
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
