class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.75.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "5c73aaa7876e814cc8ef9e1b3ccddfac544651d0492fff437f249e7295bc33b8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "d5a91a5b6c53a81c737a981628e8a4a35fd00fcf836f55ff15f95cc72dbae980"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "29dbe28ad4dc15bed1f74def4ead480211d73cf8a72d99b5100887fb17860ecf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "ff1ee68987139d943030117d2a7b6950e6ef869fd12b22be087ff4060c625614"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
