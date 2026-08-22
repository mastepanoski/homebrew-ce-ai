class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.2.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "ce46b49d568739c378b47fd814377e53e746091f96cbf9375a583e03dec62013"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "5cc2138dc0883c1288243708ba03f530cb3c86c7fb81d54c68711e6e25730d35"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.2/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bd1d32e9634bef2db6d472f2b767427d02c6ea8c253cccca2f38813b690ee7bc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.2/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "94d95184cb911296fdfec276c2b7eee4a3c7d6ef82bf030cdc7af0de16785e4d"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
