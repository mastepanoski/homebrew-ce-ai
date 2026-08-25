class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.23.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.23.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "b78b1defe247546a76f21e1a5b5cf9afd4079f6edbc27d181f7fbe658e9777f0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.23.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "12d33b65b1abb2e722b66304b5e3a50af14d474a07c94579aede2c3a3abfefb6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.23.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f4d680488852f1c742f8c7cb8c99b4f42125fafcaa36419e29ea17e78f5f010"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.23.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "23a9b19cd2397a63a8cdd856d2d85c9f9302d24922e29afd60c73da5bb6f118f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
