class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.41.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.41.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "7991a91a84bc75c258b3f5d8bda256881933dfe1e78e90354d9c9b2cd9651430"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.41.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "5f0ba6ed5650ef031128e340b61f93a75bf8a824670ca99889d49a9699a67b8d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.41.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "331d9c062aac098609e2b8814d00cbfc60e3c12474b182d5cddac8a81bde1414"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.41.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "561ba1db217aedfdf21b8b823365d783db724e213c41f5256ba1862b1f28e7dc"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
