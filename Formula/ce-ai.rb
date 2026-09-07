class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.44.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "fa17c1b2c2bc9f12d608a0ae0d0a5f141110239605a59da2f653a451a681f477"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "cd356c2fbb428b1bc66fd8c56098bf4321d6226120c870d9c9d94b111c82afad"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.2/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "965662956eb32e1506ec607a094e507d8072d465f0443ca4f9c7f93221e085c3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.2/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c6cb9fd4ee0f0bf7fc015f68ca12533639be59249307f5f7aac5aa740dc7c15d"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
