class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.50.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0f19b27dbe30fa65e5a10340417c4930e2bdf65207260d80723a1b68c75fb324"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c55f2a5197a75045e3e13a24798f70fdafdb73c7a0eede1bacda96daaec3f9b4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.2/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e8b41ad4a549c4f143f0bea21ac618eae368d53fec591091feaca83b492ab8c5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.2/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "25fc2c6768b598c9967eb93cb6b649b1ae45738ee2cab4a31143938b5679a4a4"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
