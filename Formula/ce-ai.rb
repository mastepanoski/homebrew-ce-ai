class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.2.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "eb78a8ee69de412204d0a8e471461a570493c04c3eca3f928febcb7c232d8bcd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "31459bb98a9690432131aad693ff5d173596526f4ff0706740bedaec0ddd1cab"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a83472bbc3d925f5006ff2046fbb25355af5b88f8a63722aefc967f357b2a2d9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.2.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5d88eb6ed75318ce027fba6052410686c2eebed79547702bb1662434a912eabf"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
