class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.63.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f17d9feca4eb404b3a789a0d5a0f01a30ab7c06b7ec8e639e1ea2f058b9ff2d6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "3bef5e9c1d7f1aefe2b0a481874838c3c6c8173080d953e0bbc48b7fe271cc9f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dbc10b98e3401a2bcf4d2fc31a7d4a8c47380029e338309e1d3632fbbaf7105a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "0e3bcecfed94e4e4bb7e050522b98368e09224b805d6deaa13b5c409ee2284b2"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
