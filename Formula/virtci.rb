class Virtci < Formula
  desc "Virtual machine CI runner"
  homepage "https://www.virtci.com"
  url "https://github.com/virtci/virtci/releases/download/v0.3.1/virtci-macos-multiarch.tar.gz"
  sha256 "18ef6aa14d3abddffa0d7f8a715e0b89588bd39104535257799c18e4f64cd3be"
  version "0.3.1"
  
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
