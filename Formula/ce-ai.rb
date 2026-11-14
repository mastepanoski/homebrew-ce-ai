class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.10.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.10.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "4334314c8ff24b03408024664004fe9aceadb644bca7069c9ce24e50ed71fa8b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.10.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b5f2a4b8a1579e4097ffac006dbc02133db8e132fc966b6e6db008d691b8729e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.10.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "34a8bfd516935f1730296d964cef711492231a7b7f2d6d9b3629f993cb7a34f9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.10.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "bafdea9b1b15d18ca0fe5aa06308e0c01710bdbf55d77e2c156dfc1a30db9435"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
