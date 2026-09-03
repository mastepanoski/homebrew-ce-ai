class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.34.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.34.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "eb3dfa4770adf51e1fc287bcb832e66f6a79e747149c8e9c60f7dd6425740175"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.34.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "eb96076721880430d1046f073a72da59475ecf42cf76d3cdbb8a1ebb39b89616"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.34.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f5de66e55e75708303e9bf3b8baf4b8f3d0bb12ce07cd0acdd29dfc94ae22cd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.34.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "293af48c5f97f84ba53c7acae18c03f373dae282f0dc9f5ce654c2a2ede075b2"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
