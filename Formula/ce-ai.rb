class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.58.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "8806f2d6141f29d595211217e4b71145730a23ac5bf76e6b0f74c319759763fc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "d094f129dc67fa058e5109ed5d34d2918efc7bd0ee139bb1b9e058c1b2326a09"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e08ecef155b1079cbdf4f67cbfdc34511a3f6af0ca0e9cf81e7e9c95938bf080"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "5794b41b6853e02c13cbc257f32f46c5d5b0e9a3de660703432d11218ab60e5e"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
