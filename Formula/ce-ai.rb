class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.72.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f5ac925444e5ebd9bc8216a82f392df7e2a53f151b3791d77a32417de2f77242"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "600a80d2c61174bc2fa4754ef7415ad6dee2c6a8eddde332952a49611c781b7f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.3/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4ced509a28af324f747163f2987b0e928814a225ec5c6bd7704e4ac3cf3872dc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.3/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "a2958b7bafa5097118129fcc5f9d5f7385f4e17df39c196316e45112f19d2a83"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
