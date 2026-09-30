class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.74.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "e0cd94e9ab0a472c6fe219861e8a16ba5ce70eb537913f666fb14c5cdc86f41a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "a1655387d6c4ab156a6728f301338ca27bb4c0af3440629d5d58a9f1861a1706"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.2/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "feff75bfeb454a67390e76da0768c0023fa315ab6ab65e7131df807b507678e3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.2/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "c6878722926839005410e4b8e136f2e61a715890dc06ad13588f84b0e6f045ac"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
