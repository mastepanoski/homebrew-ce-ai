class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.77.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.77.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f99e2b0572c626ace581b554cea721982125eedac348a7749d31c2f096b25794"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.77.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "9f6a5dfb6e8fdab4c0fd47754386d5923b6d41c19825eae57e9e554f10417681"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.77.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "573d4253e0296daae4c625d341dd727bebf520646009d0dc67f16bb21981e8f0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.77.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "0f352095efa4689fd5a032b263759132a089f6debee905aa0aac0f4a4d637a7c"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
