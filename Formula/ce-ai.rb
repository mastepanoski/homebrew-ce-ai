class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.7.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.7.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "774af4124c87e29a775de4303980ff69dc7553db5a65cc9fcbff436412b04fb5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.7.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "39bf4ad64e96d61ca908d1dc028684aa95c2fd067b699bb5a0308f7b99561f92"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.7.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8609a5892f8193449f05fea4c53dfb1d1c0d9391acf3039d6b387a4ab66b0d29"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.7.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "45d5317fbe246995024999cc1d7a9ecd5f5f3db8cf1d4e54b8fedcbe6acc075f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
