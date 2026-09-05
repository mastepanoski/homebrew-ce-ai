class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.40.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "afaa3e0e9832882b1c9c5e66203d2661b35c1c19bebba6a5fdb1e6bcf79f20b2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "ac9227e7f6049d52d7477548ef57f1a97984def0a43f14e75b4b0eaf39bfe09e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d32982cad44371e359ea8937d6a1b78ed64ed305459f5569c905226653ffb928"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "a768079339569e60c6c268df49be693a58ec791d57fe84d42cde5c9e963f6bba"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
