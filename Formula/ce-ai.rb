class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.29.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "2d9dfc4bfe2dc70a8b79fcffebc0071e0da86afa0cbe9d5118aa9361f3312762"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "da75da3ad8076dba8a1d29c4953fd1f1b66ad19aa268e590b2ee0f5488b36975"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.2/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9ceb0f2d36820542a80e1704d5f74bb1e4d05dd01470ce2af34cee6a238eedc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.2/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "92228312d262518e84cca687be608d07a7bba47259b11b0a9d8dba098c0ec236"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
