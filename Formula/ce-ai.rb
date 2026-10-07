class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "2.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "cad2160e3fd435c71fa9a5ac42c4e476112f126ba8605f03a7ce228c5eb0b95b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "25888db944e9ef2d26c546672ad64eff42b439def54924b3003c6d41caf0f334"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "827add2b9fdf95d9443b1806aac68d1b1f76a4a72d6ed6fc98bc976b445e7e7f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.1.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "df8cb8a5a75f1c8ada2e3d7b4a256e83b6586525acaad47605a601b6d292cca2"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
