class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.6.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "3fc9d88fbfdf6d95c54a0ea28acf7ff4b65efc5cd63a7873ebb3ab5b2cb52eeb"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "5d853eb9e440385d79af5f8dc58af4e3a76bf17e85326b54fddb37af33609506"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.2/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0af9982558a25eef9fe828aa826f4a7277a4d864f38eeb090d0531b5fbde159c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.2/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "03319739e2b207c8e3f8a643765946fa6595cc157523a16ef623757b1770ff60"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
