class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.1.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6ecfc652ff9f780cb695f6587274f69db56edf5127ffffe4a5e783840d40a34b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "a1d914443dc6ec398f9c67f0070ea9e186a1e679613796d33cc427e6a46100a1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.3/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "deb2b1ff7532ccd8bb803bd4d5f04d709af32affb9611af66f85125ae5e3d2c6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.3/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "19d28c4f6da6cb44fc298c6b110cd44ff589bd6ee1d4297b55174acd76749589"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
