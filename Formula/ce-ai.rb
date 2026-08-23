class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.8.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "5e9d667446b7016818e771af8a4110369e511ebe68c9a3ccb66c2148a1324829"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "ab204f7fbd173a8b9cf47b3c6319a9ad42ac9f229b354c52f0297d4f927f54e3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0967994cc99f27e7eeaedf942ca22358d4d62abd41943224a9df9686fffc3bf7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "a80824e3423b85ef8cd6e1c69f7d9f3cc71644d808affaf4764cf6a9730c0f18"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
