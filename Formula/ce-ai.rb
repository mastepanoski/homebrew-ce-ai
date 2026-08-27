class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.26.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0b3c7e489d3bf28c22677356ed6a0dd414bfe9a649a57b29ee9ab64076d005f7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "051957a96aa840e2fe404964a22514805a18f3512144e9dcb1b7b78314654f76"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "28e696d76a975f06a3a868b3298e29fed8921f427ea5e746299b296e30daf8a8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "78a8fcd6990095a2e448cabc3ab22d42ccd17e087049e87b59286a889f9a8493"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
