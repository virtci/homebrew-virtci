class Virtci < Formula
  desc "Virtual machine CI runner"
  homepage "https://www.virtci.com"
  url "placeholder_updated_by_ci"
  sha256 "placeholder_updated_by_ci"
  version "placeholder_updated_by_ci"
  
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
