class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.50.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "13ae5da1425955865669059e31f1fa65cfba4ec500e2f297c69a7914fa1dd4e4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "e0b24a726bdcf80b80ab39a1e48d370acf1fa35255e48208666737442ff7440e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "342ed22d9574d22554fb18ecfb24addbfe4ac085908c05e15781219087a54084"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.50.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "648cc89f8d2cbeb2c685579f6b291116a57ec763678d4a9a03ebb01855c3cc64"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
