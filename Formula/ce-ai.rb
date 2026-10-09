class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.0.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "d0cd943e3b70bb33fedf1c8d9737cc4f2626d22f7b451a8ecf0e0d64ceb97a14"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.0.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4a2b6adf6aa363777ebeae60f498d4d92ea55c78f469d6603dd504af3619c1fc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.0.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "013175019f6d5fb61299fd7a0f8b9e5a8e78b3076b7a5ad8b00a1e52aae5f099"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.0.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "202826c18df5f639a61b0a260ab28da9e75705768e875fec377408a90c09fde6"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
