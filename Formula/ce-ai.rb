class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "2.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "8545cbf247bc8c268bcf970400030051dab554f561d43ae052d85f09afd75550"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b12555b05e037cb8b18073fd98db0892f41990eee087f6b871d697d49db4af5f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8d0a64c3a6c2d64288e3447269e5c7819b2cc2313e4dd5d8a3f4bfb03d11a6e5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4696856c13f0ee33e38d0b6b06a88bf3bed057d0af27e5ca677b1ba1a1e7510e"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
