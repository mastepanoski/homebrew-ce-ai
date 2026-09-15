class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.55.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "5ea144dd9c9d6c268a32c3b6c524eee4a777eb1ac8c1338e2f7a01ed5359edae"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c67e9c36b8f54ce07b2d597dd2f72bb411e363037e47819a86418c8aeafe7e9e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ac55ba3ea163e835cf315c47729980d644f3fe132ee047d16e703ca34c22cc7c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "5082662462685701b7a94a283bfe54c5c8e501eb2028bce035e6cb28e99c7b84"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
