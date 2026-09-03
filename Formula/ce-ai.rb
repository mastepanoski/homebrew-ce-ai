class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.36.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.36.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "9344a6fbbe27b3cec5fc2592c4ea5a26c1e5a98112c8f3c46345f660323d58b3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.36.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b46bdf78d35b875da44eef9937eef23a3b0fda5d939c97377b2d7ac301c1b830"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.36.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "94cb4e08cc88d92ba2e7bf6d011d6894bb02296c4f16408f563ea5ff8d32e70d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.36.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8594d7da4c32571b76a3ce3dbcdb717979733d1fa301af633c76a76516960f93"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
