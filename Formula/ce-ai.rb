class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.44.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "e68f5be8da490bbb328c0ce7647bf151b9abae662bf33d1372aca353a49717c1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "a07d0ce376e8eaf3491a6b66ecb7c6e99e7ca1527a1021d5a45e503c9858a384"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4a6208e2450b59b7bd97a98c6bfb377e1077de537da949062a9f6552a343f645"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "30c5f4d3e85297f71a760b22874f6c7dadb54c34ee06fce6f03b1c55b735e116"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
