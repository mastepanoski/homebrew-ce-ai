class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.24.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.24.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "d732ab6716f05dba7fec057116d89d499650eb2b22fc8df2fff8e7dbdc8c06ed"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.24.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "2c01e7c83b534bf424b4adaa61b26a5758aeea9364f9c64dc2f59e24ddc88bf2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.24.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a854590c49cf3f32cec4a132b5cf048b76aacdd42808a937bbffe498b599d4bb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.24.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1dede4b477e3a59cabc9c4dc611f9ed62864d6a0e523057d7b0d3b94552fda12"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
