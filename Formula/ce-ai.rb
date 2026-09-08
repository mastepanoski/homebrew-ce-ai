class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.46.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.46.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f59b3bb1a1c78c325b8275236dcdbeccc3c9f56f88d317b60e42d455576ddf74"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.46.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "6e3da9feed9d04503bcadee6ac3e8f24ada2ca36b16b434d07ba577e4db8784d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.46.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7674e344b9845d4cab1fdc259aa81c1eaf1c9c38ee67f46f8698af2557578cde"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.46.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "efb3a5769fa4b84326075b251c193659ceb6da2d5c7b3f29b299fbc504264195"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
