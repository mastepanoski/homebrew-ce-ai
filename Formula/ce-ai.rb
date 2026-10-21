class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.6.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "97e4602805d3851085fc13cd32fabc7ce2633f5b1449a52b175c650ee5cdbfb3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.6.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "8ad5a02c7a4762409cc1f1f618491f69ddf98451c7887f58a0a07f236a46dcb6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.6.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1aa0eab3f6f2d709f89b3695a93f739c769a62e1ec021145141a6655df7dcc72"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.6.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "eab1c23f69dfd9b54c11db2375882a8f62cc1683f934f4ee78c230f1b13904cb"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
