class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.11.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.11.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "9e6bc1f9eb4a8c0cc78c716410d7c0f42895d79f1615ed30830767dda3993cea"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.11.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "2636887a229e20b6992bef294ae5466dc62dc29bf6a090d1058f156283080c0e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.11.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e2cf1cd4dc2736e03bf0b4fa8abed636bfe7abcaaef0bd4569a512d1662bb726"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.11.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "5f7d8e1c6e8656f98b790c0d108b4c01a220761aed2f6c68a0e62a985f7817a4"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
