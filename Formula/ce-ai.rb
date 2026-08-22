class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "fc34011d3ed05e827663e43b6448e116885da7ed62d845da0b66037f601aaace"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "8e5ed5b3a24725525425fed45548e772031d721809fc596d7069b4a1f8a74134"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d470b6f699e3b8756c91cc41f91bc83d78463a408371d28499451f52716b7e56"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.4.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cae60164a5fa703bb50573f6824f0d99263ec046f5ddbfc3d1462665aea1b914"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
