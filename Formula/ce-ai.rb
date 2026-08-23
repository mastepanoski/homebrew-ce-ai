class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.9.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.9.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "d09bc92553bacfef154787fd1959f85c69d57b082017af2c9a4d8c87d1dbac59"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.9.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "7be8303142f6b48281a7f0509fe2954de3945c0078bfd04a221161ee3334a32e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.9.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "532f2a21437f3c20d5f046b61db42935a36b207cf58777f4ecb73e3b033ee787"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.9.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "45b31bd8ec73969cd7d129fd1564374be92a87769bb931ad1cf2ab3a7d1aec92"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
