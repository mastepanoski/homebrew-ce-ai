class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.19.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0e0da2ee1358c644cb70c05426a8da70f45e746c76626fb69b5e1ea4ae533a3a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "09e2550cede88c0ed652e9ba894641aa09ab9279f909003730b2a2bd075a14d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "92fd3750277c1d6f3adfb6eea2fb30e605f9219be9319a680048e8866d063e16"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.19.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0fa677220bdce1619347ccb67a962b5d11a61ed972ed185d4ff40cd0d6aed622"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
