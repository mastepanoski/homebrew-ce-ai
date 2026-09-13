class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.55.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0de6a0124a2e213f5e35309fd49bfa4ed17f33c430133a50f18c9db58804afa1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "78167cd69118013fc248caf78cebd163258ad4d794d31eb70cda01649344026b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7088cb0d1b85d8c4443022c3c7bf168a742d4bed5a7b8fcfb0d6aa34634fb7e8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.55.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "18697f763eee28a07274569c9a6e7600656c1bbd7a19e24cd96d5590b3618e85"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
