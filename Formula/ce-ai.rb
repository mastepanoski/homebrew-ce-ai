class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.38.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.38.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "aa41f99966cecb0b2487dc1831b8efc54a74290b47f2a7d5075ee58eb0f3f7f7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.38.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "ae3188bce28391a5f1a1f3ee688bdd6548120338537c5fa4c7d1a61776a5eb01"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.38.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0be8f0d5c29866e9d7c6af0453f7157075f4c09d84e790d5293137e3b3b27efb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.38.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "bbc8af0803f4c1bc4255389c880a567a0a665728925d07347356be060cce16ce"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
