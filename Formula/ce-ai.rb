class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.6.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "65645496b902229ab34e8a21b8da084554d692d4aed920ecf2cbb6ca60aa0c09"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c5d42864b65ac11cfc693d2fe208dcd072919d1e169a117195935500e622813e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "11cabdbb0544881b2b6c987768d8e5a2a24450b65798084f87ead6839c81e32d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "85cd820e8dd254bf788b85f592176cbb842e5c36f20224b283bdac7455e4ac8a"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
