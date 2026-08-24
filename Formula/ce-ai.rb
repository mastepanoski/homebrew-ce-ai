class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.20.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "b49f2f582c88ebdaa6f51aa053c497dd658bfc15b6636e7239add5b543bc9a95"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "26dd3534923dc34d66115fe1a1420958613386375556b6784c0371b16c34e19f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.2/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "553b9b3e2a56f04a9555c3e9f6dac0187363548402b77463aec79b840bf663fc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.2/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cbb108dc0894dfeae8d4f2370000e83a13b36746bb6a1c33325f766fee8cf658"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
