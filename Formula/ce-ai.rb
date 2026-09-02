class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.31.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.31.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "77916472ae86979819b06ecce8c6cf1eff11c10afcccc95f6fbe81388922a6d3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.31.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "d8f398f12c8d65d756b7706eb107c19a8085709dfd94e68686680d7687be847f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.31.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41bf3b87973c62598044250f26158acd36bb44cf55ddb1622404eb2ed4537c9f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.31.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ff44e493809fcbf19a794f770205420fab38ea572d01a9e59531905ecbed9759"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
