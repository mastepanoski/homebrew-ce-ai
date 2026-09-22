class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.65.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.65.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "9d2734cbe3e0dbbcd2ad686597e93e4669ee6e5d4b4676c7ac44282b9babe86b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.65.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "737b0236af9ed5f205243217fcf03576796f14ceedb05c61c5877a0eb01dacd0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.65.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c4977d3a8dc522aa1b40f40f197c620d774c6a014918eaf6e45b9de312a13190"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.65.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1966ce3853232a94c70357f12ec4d1fda750d543476c69e31b192d77cb7f825f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
