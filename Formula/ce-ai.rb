class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.16.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.16.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "26cd240b34b1afb8c3bfbc403a718e6fad1c1fcdb8842ca84a6fd68c3d2c58da"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.16.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "99bf9a1d1bc52e099b60f87ab926374d2e5377ecfdc459dd7c70be954ffba7ca"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.16.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bf8a3ad0d71f1e951da491e9e96ff000e661f9b80e65833af05876f3b864bc60"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.16.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "574b25871798fa8fc6375e20d361487c6b1a20241ae6bd2203cc5568c1282193"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
