class Virtci < Formula
  desc "Virtual machine CI runner"
  homepage "https://www.virtci.com"
  url "https://github.com/virtci/virtci/releases/download/v0.4.0/virtci-macos-multiarch.tar.gz"
  sha256 "a1fc683554ac3857c93b082d02439be3c57b01490e8675a06d5637d7a80004db"
  version "0.4.0"
  
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
