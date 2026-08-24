class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.18.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f7931fa1f2935a89140ab808fef346a0c6767685105049ebbb85709ec3f1a92e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "3fd0ef8d8c2bcc239cfb50aec2e8ee033b7ee222247a0f0f049f72a3b8929e4a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "07fab57c11da4fbadf449a4098a6efeb680361252a74b0d0ac6d1af0eac4513b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "63be21fc8d6a2db5e146d6ff7115fcb550f77a5478401dd1e94ffb69855f074a"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
