class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.26.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "a9799883006058ee7d35fff2cf3c0c3bcca59934dbb7b7e48605a770e4da4c6f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "bfe1ae63f94e5f89b8a850ac4021c59614e3ee1453165d11a51c0c9c782b78e8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d725442e2808869917deb2d65577e8fd17ddcabfc114bee0ec88079dc205f1d8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.26.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "105191719b9cbb5adf98c52758bd224816346fb2ac359553625b1b45b31a0428"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
