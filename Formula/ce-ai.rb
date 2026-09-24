class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.68.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6c3230efab1d98c6941b8cedd82863aa1ffef9b8a258eb8582db443bcd09c422"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "a2883449ee834d754ddbb4868a04e434d8bbcfeffbc5f7a7519e9d7f8b48be0e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.2/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "974768e27ec89f266458c1d7e9dbb503f1089584ceb9e325a4339c0324e770f9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.2/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1e224a1e105058210c9ad2a94c96778fc007a7abc37d3c3306051b6a74ad1ec1"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
