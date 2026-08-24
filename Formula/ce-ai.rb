class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.22.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "9ff882917a8c6d98ae74b2949a4235373181e5df2480d7113db243918ffe8574"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "0f6d1a9f25ce6b8f578745d856bfcf99c06b540369732d4c71acc325fec00e27"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.3/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8adf11288a6d8f27f33b1f86e3cef594ee3645754773765f03e932b677e7b5f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.3/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "40c4faaf11b3a73beb7044c2c13849dfca998b903d96e592439b1d3fc537eec7"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
