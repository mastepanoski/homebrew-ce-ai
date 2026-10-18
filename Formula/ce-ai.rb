class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.3.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f023660fd89f786c85d6b21b84973ed1e50aa5e5b0644abfac9b65f345e4ff1d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.3.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "e49b039dd388297d480e67cd6cbc9c377a2bfe051e658984c9c7d8249f091fb6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.3.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "54961a14d7d32f8d7306bf67ab1a3b1b1cb03abe082a82521c66c2174fab4354"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.3.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "879821ea507395082379ee4c81d5421fb188b37b3f759464545e24225f30df30"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
