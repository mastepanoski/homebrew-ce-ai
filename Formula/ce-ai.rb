class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.20.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "1f03de783bc34be406793ca4f52bb2592ba3e896125f47e62dff881c2d39f7bc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "0f15f28dbf5a66233d5de66564ef4bc72404feb72ca083d9f2c71283ef1cb705"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f02712b409c7284ff78d02da052e2df7f472805b23dd808c8f5c8ccc65615c41"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "09ad0d975ac4177301d37e3d64fbbd79834b056350797a8f4918e67b59b570e0"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
