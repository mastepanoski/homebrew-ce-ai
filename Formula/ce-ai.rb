class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.11.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.11.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6236d9844a42e65c7e8ea045ff9b10dccf9f3096a586506d4baa9a11de1027a3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.11.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "49e162571012e372131fee0fb00cb282b7ad737a97c2099c84245bb85493756b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.11.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "63817f1eff3e0a6de03a855a33d07ac5abf57a5eaea61acf2613edb8e8704c00"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.11.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "4b6fd0b3d81bbcbb098d8dccf10e03db62f4dcc8a989f3a6915d4851e107e496"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
