class Virtci < Formula
  desc "Virtual machine CI runner"
  homepage "https://www.virtci.com"
  url "https://github.com/virtci/virtci/releases/download/v0.0.0/virtci-macos-multiarch.tar.gz"
  sha256 "46df549f69549b865b81e05777161d3c744bdec6d2d9e0fa4c78e5adfb6c3f29"
  version "0.0.0"
  
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
