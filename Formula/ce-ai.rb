class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.57.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.57.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "922651844c2c69d15c7e7617ef749a75ddeba57d0190bc988cea392804bdc8b1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.57.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "409ffcb5cdff4e93c4ccf1320eb3c74e1254cf183d235c110ad0071bf1438dae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.57.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "81958c72fb800f6a2cd2573092e94d5b0a5cd13022705e3ecc242d1041e94a84"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.57.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "22ec927acbfd18d95183101df28644ca131d7e2a7305d1e2abedddc438acd2bf"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
