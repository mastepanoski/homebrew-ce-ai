class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.63.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "bdaa94580dd323a0822f842de155c5857120f77d34eb27785bb7b1c3a612cd52"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "bd1910d864dfcec0f3e147391549b0a01ede3cee1820afaabf80b2402edb4faf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "25eebf9c2ab4e6fabff3ce1c6980ce4158d83cc2eaa1b5bd874076b679bd038b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.63.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "ec088271f87232f6bd9daa345ff392fcd4b27d4a01b3a195f9544006d2f7d09f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
