class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.5.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.5.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "ea73f0bf9b8b73e6fbe43b5137fa0729ce4197376fe49688c6d2f018fba4af19"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.5.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "bcea0d39f8c4e4124273be9229993d45a9663cb8f05deb2538ce478647077451"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.5.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2de88f6386a9f327f705ad97dfe837858b37160e54d3e69edd4283792f7f672d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.5.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "e82a2286df2e6caec07d00f09f529752639ea030dd34516283914a01a07aa05e"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
