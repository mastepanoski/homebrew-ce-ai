class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.44.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "4fa637da934b3e83ad849217215841c5ce5c8632ee9721beeb6e3711c4171cd4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "69bb7a1dbb6f55892112508a4047d68bb9e3e7e2b06ae6454862e8bc0f113159"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "02543382bc1c46513fb765c6200c328d1f4fe728daf602bc3c843cac8e72b7ed"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.44.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "55485349572fd98624c589e3bc836b0bbad2e4405fde28ae82037e3fefafd001"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
