class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.68.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "535ab8da6315e928e13b366a86dce14b6f4b71baf96c2573a5b70f3376d5d6d7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "d969a0093e18141e9f31f577b3ce32d327bfb79a8197c1c91a73d7b6000b66eb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.3/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "738d6a777617b8241e6684e8cf3c2651f918730e227b803a2a9a8e56629d4631"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.3/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "2547fb6842e5435a5333bf0cbcd24a38250be73948b55955c49bf6d61aa874ca"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
