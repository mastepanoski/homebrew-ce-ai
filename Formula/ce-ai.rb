class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.75.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "c8ebab25c9255dcdf3754f2ad789e01b5ee5bfc935cb5881673928faac885155"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c2b6df0c046537f03002a04483ec31475e0273aa7e83137a5082f037ae31a77e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9a22c71a8a61e615a624ebd66665655e5bdc98d78c350203b258c5ed29e5dc57"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "9a9b4cf4bba798cda17f605d7acadaf65e22e43c4e04707c14e9c74d1d0a18ad"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
