class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.48.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6916903cb667e004dbc9d8ee6bfc0c6f1ab2202c805d4cc770029cabc89caf7e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "600aff962b8d115b01427d4c85e30d8b9b406ab0d799c5266841e47ba7bd1cbb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5a790640fafba1c5f768b83c5da157ced3a273ccc92f22e95218c12102837486"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2566dbbe059c97342a90072ef1fb0ce7d5bebeae60d486bac5dc9ede925f31f1"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
