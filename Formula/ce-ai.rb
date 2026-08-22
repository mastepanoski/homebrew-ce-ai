class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "7ad4ce6fd1daa526d20218813097febf6d8285dc734aa2dc772c687576ab4691"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "cf8a163ee9ddfc509170b6b81acdcea42be14fdb1f61b905d97fdb4e883a612e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "296d0d8bed7d5cbd17ff8f7046a1e33d87170a55c60a9d1d0db3063332e0570c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7f661b49cd5c8286c52db239053c6fcc0179709db51d569432e486a40a26f2d2"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
