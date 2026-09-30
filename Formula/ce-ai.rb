class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.73.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0b9cf035959a2be8504f4c349640e417a4442993a04ea1649f992c428858dbf4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c41726538189d7c9d4df85550137f8db1dc158c2a3a2095565e7f6b3d289ecf9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3230a04ab214c7a1fbff8eb35e6dfd04a88795a8f8dd581610418e4bde2fc863"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "d0c904f2f36d7341b15f64c733f29e19dbda8dd562c2cb8a401a0da28b7a3c8e"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
