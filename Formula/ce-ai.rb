class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.32.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.32.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "8386fa696ae6cbcae56776a4e84ba046110819345b8383fb2f2e16c5db932c7e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.32.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "cb6026a6d85c6f59a532d1805cd54066492850061ad6fe94ea2668555a5d182c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.32.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "377d9bec062a3d5dd95f7459d539f494024153e62161fa83af59b42225466814"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.32.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7193c0804d1825fec5cc17540cc4046a2eff49b62f126bf0f04620f67316809d"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
