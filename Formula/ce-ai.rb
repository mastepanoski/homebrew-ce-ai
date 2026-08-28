class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.28.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.28.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "8b242c6e4c91f1606cdf969f55390afcf14676d6ada00bdfbc1236ae05ea1cb7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.28.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b56d2a336843da0aa939f2062a02126ba4e2109a48bd53c2d4e5d72350bfa819"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.28.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3504c2601de696496c8d550077ddd3717b7907fe3d89a8c61ace11079ffe3a9f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.28.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "00d03faa5449ae736fcd392ef0e42832e3ef095e7eddce2f21ba28c7ca155019"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
