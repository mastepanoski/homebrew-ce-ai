class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.47.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.47.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "34265a53ae4632eccc969c6c3ad6505ef6d7f50625376c1aa30ea3c3538794de"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.47.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4e7f9ed19a33b5bf76a40b6bca287f7de32bebb2c54844f1e1a8a181c857edba"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.47.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "efe349a53b5532c62fa1ecbc133bc356b6b89b3b1975ba264555eaab423c4b8f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.47.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d1a44e6fcaf316a8b82ece7aa59ceb17c0c4a2696ec1cdc683f75d46ec04ca5c"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
