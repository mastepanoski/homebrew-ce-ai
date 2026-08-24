class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.20.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "514134a7466676d6373bcc25903f263ecd0bdf14b29f3ba068d9b10958282829"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "9b4ddc340a38d1f0164e690e58ab43ff2431fef475c24843eac74ebd44a122f7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.3/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f279345f085e4dd8544ec1e2b559ce1f315dd32f73a98c755f46b3a0f29f68b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.3/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7d7e48c9ec303c48f12dcc400bca1ab5142c81194b23f1695dea7d15d9c69381"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
