class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.35.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.35.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f517cd2cabc0e1b15d41854eec9aaab4ae4c238ccf04c53db28ca11d566c2287"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.35.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "edabfaa64aaddc6ec62d2f7be028e5c5f081cea12e510bdecd9ebf9873b23efb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.35.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e7e98ea07fb7cf823aa9751a675e54681b6f925f3653a9cbe82aa41a36b639b2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.35.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "167511c4428dfc96e8948bb4d584cc89175ba4c873be885dd048dcc180667630"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
