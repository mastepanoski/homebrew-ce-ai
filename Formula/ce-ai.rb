class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.21.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.5/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f44eef1cec42a9dbe01cc92e53f27db3e065cb07397929fa9cc262e312a73faf"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.5/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "0f151532d0432b9e480989edd7728902d2cfd903ea0d4e49b24fd7d6f8352187"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.5/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8129dbf856720f46763a51f9d5027cab8c2da2908facb9575eb9e397ec788f74"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.5/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b232f81290a431d8be5883cd1e4a1b6f93dc43731d53fc84b646f729ac92887a"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
