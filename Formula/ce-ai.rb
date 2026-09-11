class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.52.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.52.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "1b194e1fbd3159d664ca6ed3e33436f558582660e59535a126f18b7ccebe1bbc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.52.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "acf163618f764b06daec109dfb60f02b3ab672712466410be544027aba6476ae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.52.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "355bce22fa1240fa857f6839c1f00af7f5593abc845fafdad5771728364953e8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.52.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "951af517af026bfcc2e9562a4114205daaf22a01f9698b2b263ed35536715e78"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
