class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.53.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.53.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0753e34cafedfc5694bd864776d3ccf92e2463cc2a845f3d04b897f13d92e7ae"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.53.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "cedccb35efd2cfea6d160e8a198081ed31377ff5758b6887bd9c6165b2f2e928"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.53.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "467ff0fb6d8bd38aa6da0b82cfcd5a3d63980c0134930c75cc6df8f4d03aef15"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.53.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "22663de700c40b3251e0768572decb21c1817503ff8ff1d5d96c064d1cb58b8a"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
