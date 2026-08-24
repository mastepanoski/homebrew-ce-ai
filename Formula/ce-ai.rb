class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.22.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "2700ce841583970838c7c830ac2c11d9405c52dda6815ab0e3b2714d362e8c08"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "8d16c61daec89de342b9dc55ec6e2acd54d2cf248fe8b64a0f98d69b22791d5e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f55eaecb32c4ce024fc8d5f3f472a940d769a716683a69f2baa542358a0f54ca"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.22.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "572f16d370cc0f46e5b26c612b9f044d2f40476dac79b6e7da5d4ed84a69e657"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
