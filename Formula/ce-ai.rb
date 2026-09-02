class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.30.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.30.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0759c9a06faa72c9c6e27099e69b6f99c1d2df6ef2e1518f570f32287d2b9122"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.30.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "fe32f625763040b17c532a45a37d75352af807bc5e523351a955e081370bb2b5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.30.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4a34ba4f615b450e6dcfa0fea6745a7314774f0e6e1cc1c7f31730455950ff47"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.30.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0261a077c2126a3b6c8333d56dd15ca4481ca9e38e7248a32282e4bbcf320bd4"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
