class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.10.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.10.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "eeba79210f1be18a21b0afe8b0640216d8bda8ca0f3d78008dd30dad9f95649c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.10.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "f7e18897ff8de6d91e9624ed04f03ec6c6645f8dd7e272dfb979ee75aae5795e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.10.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6a2cea8d0fbc1900e6aecfba20b5b4ae8261d7aa25b80b862daa17ec7bb2ce82"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.10.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e5fc3486fe189ea1e3743c78228c5b220b32f43153bb821acaa231da0677e845"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
