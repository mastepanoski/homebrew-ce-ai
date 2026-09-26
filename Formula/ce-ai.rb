class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.71.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.71.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "ad2f80a1b948e27b0975265f1b730489ed937e62ee07071c5bf8ca89df52a2e2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.71.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "f44d4d7614ec5de302290eb1311db129a1cb9b35ad5b027b6c0d2b688e6e9590"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.71.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8255e1c256d44ebbfca12783bd6d244f3d370ff67cf0e06046cc2d190c5b3f9d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.71.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "ea9b77a8bb6b041e59f7426ac2fece40c462be18865a7c5f4f624904e3246c30"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
