class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.72.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "956542483ad9300e58e206dff4dc944c7d15fab16cd6023178741d718e975572"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "db671d5a456a71c70ecea49664bdd024933e662ad5bb28acfb60fe8439e78fb5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4f14f259e865d31098fcaa36ceeb8521d70d6e03fe500f13cc20cb5ef6051385"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "d06892fa5e280dca2030fc5396c6bf00f891590a89121fe4ec7f9a6361eb8a3f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
