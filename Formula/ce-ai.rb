class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "779a4c4b4e68514b1c63d51b68102ac5256d35614e18413290ad8d15668a47e0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "6e56a48bba47435b0a9524a3c0b7b88fa3ca25f0cd559ca861dd52d5636a6b55"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b0ee28c3508ab59318364c48dc9954bec58e7d4a6d394739f22d22a25670ec17"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "cbca062948231deab264e8d9cfca7e1f5e91b0f154e1deee64bdd1319de63560"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
