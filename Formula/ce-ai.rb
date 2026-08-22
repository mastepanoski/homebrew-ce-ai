class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.4.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "58ad1d9652e9cce57f1b77fbf0fd8ceffb1107318b89b2952949fd9e3d5ca4d3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "3cf872665a077410a4a4445f37f6787abd833ee012bcb3abb77b388d0d60210c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a9a48749cd7df3ab768c7eba18d1866a4926c082cdde6ce42e3f3b11c8c99612"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d8799c312c556c09213205ecd1386e4b7f1936d5188c07994937f4b0339dcf9b"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
