class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.19.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "2d9c052a40260328f920b2cf2a739970a2d52466b8a91aeecc3b4e8816bf0a13"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "aaaea6422507422ac87de8e93c8e65dc2aff8825525a567f9bbdda52b0ddbbf7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.2/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3b5e05ac03b99f85cc8b2b45b80be926064e72035483cb3a340a7b080bb7b50f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.2/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d566b44666f5bd19966f365420d6393ed78f864fa7434bc616e4b9e2821d301f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
