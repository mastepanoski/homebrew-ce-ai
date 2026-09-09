class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.49.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.49.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "50c9d1dda96e1869b0b9a5e17bfdea6457e82bed080fd1790a00e77f7084cd98"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.49.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b087b2c925cfb99685d83b34bd41a5812e7a5e371a459b8581ae8c2f92e1e73f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.49.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa27ec6867695685653d8a0eb40e5029cc30943881b54183f08ac1f5eae6d8fd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.49.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "81157072995e2a22834123adf9f04ed78add6dff09c23881cd691adc72f85daa"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
