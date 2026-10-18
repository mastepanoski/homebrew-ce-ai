class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.2.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "b6393c88e7d50254cc4bc2e0e471092a4bbfc1133ddfeb397c55911509ecfde6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.2.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "88ef353702cc19728c34d7f69952ac48cc7e1dc0a0901482bb8c32d99076e272"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.2.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "28bba2223155df841a4b9c4a1af3f060115882218c8b027696802c881bb7e573"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.2.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "350ff71bc2c908f106760935ba5d9714e30356de931402f2adab17aef179376b"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
