class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.37.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "3f24498beea3fe8bbb4c381e5548f89560c3fa080f0eae005952eab2bc0b2706"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "1de647ce219fef03e7e4cfe65f4ab01db98d7236ac79a9fc57c1113c50a5d122"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d976be1b7e2433a6e256bdada79c27dd4a4bc6fe8e6d879de2c4306623a54281"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.37.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "000f23a76681cd2a32c6a82b9bc3a9cc61540a1ff0b08deff0963d0cbd825820"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
