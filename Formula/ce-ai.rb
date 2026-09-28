class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.72.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.4/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "ac5dd96e3881b5d830f21567523f92d2289f15e2943afdef51c6420f31c6dc25"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.4/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "696f5e8e1f4fecbd8afd8e15ee3fbc0216417972f9e8b735dd4a722c342572d7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.4/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8e144ce5d47b50d5d1b6ad3173f8ae0e0790de4d95baaab84581334bb2b858d8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.4/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "3411f78dd656eaf9e5d2193bfb6e3974cb843d540776b7b1608a959fc4a1f812"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
