class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.21.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.6/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "ba107f6915b4e7ed8be27c1cfffcc69b2980e387c0853bf1d7864a762d67d1e9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.6/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "3198c5054abe75ab8633eae95296565de2456b7ced210ba3b13b67011a700310"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.6/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "57cec5717cbb15c8845086da377c4e82d99191677df4725b4ed82ad67d80fb63"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.21.6/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "60cec13b004aec87056c5f7378e6ab58ad1f35a5ef186fb78b92715b150aa905"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
