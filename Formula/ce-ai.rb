class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.13.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.13.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "c07f107e6fbb48ebea4c38827defd3ff62926a7424d8ed78d679421e96e6a060"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.13.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "3e36a3a6b129a33d1594545a6cf8c04e4f27a309df549650d357fc79889ad206"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.13.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1e8910a29a4281b2a2e44ed79c12c10765dfe97829bc6b05572a4042b0e8d5b2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.13.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8ffa52281d57002df03017cee7ecff2dc912e460a0c615049b3dff0249af8bd6"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
