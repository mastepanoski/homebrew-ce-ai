class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.8.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.8.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "779969c694baf5a444e8e71c69f97e1b5908c569a6fac1125708165f7b076c64"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.8.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "db90ed3480b6f73a8fd3cb2c1dc51849b553b7b09cabbb46112f283cc477e61a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.8.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c79d5a71506479d1ff8a2e5750c14814f189d19a84b3fc4ebb4e0046ffa213a6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.8.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "e6751070aea5d3f6fffa60e01f56bea2508b1ea0e46d440089e3f1c5a3e8bf3c"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
