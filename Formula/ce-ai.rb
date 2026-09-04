class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.37.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6f4f8dc2547997b3c4d5e4d37d88bfea2a4c60e2c4d314906f013203c5eea7d5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4aa91e2d0e080d21440234306b7aee09f07e1a4edd4b0f6d965e5e8c751cd1bf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6b04eb5f3909f92f1b8c2b1efb18179cf6666f0b2a577a753b00fe9431e86529"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "305ec3e28b086cd66ac7ffa7e1f34d00c587c9c76f1403dba8ddc4f379a4dfb1"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
