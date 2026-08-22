class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.1.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "1bcabc121569728b0ceb058ca2168aa8af9dd423a5132d9058698c9a3fcaa5d2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.1.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "5cabd4cfdfa50210753eda83592271589732d7a3cc27914e842e9e5682a8833e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.1.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c5dfad0dc7ee7d9596e64af2ce0b4099139cf1b6f7a13783f8b3a369982e156"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.1.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d333adcaaaa0e8246c1cda944b72228a4a53b842b0bbd264a12df949ce044685"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
