class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.29.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "dbb49cb254853c9e7ddb52bf07460a548714936e2fd000b0288222bfdaf62e1e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "be5de94fea29cb6774973a981b4aced5930badcae67f98ad03d5d5f810e05a3e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d66eef0fbc0f923634f8b1924c8370074e6bc3ec5201a3d45cf03dc5834351a2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.29.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "35519d4337acc803ceed09602109045097cbfe28b0f74168742b373927a9f060"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
