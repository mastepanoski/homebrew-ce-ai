class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.68.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "44f5e4b75398880015885ad1e1423f2f5a0a8778c4349d01d109f52ddb0db0a5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "6ca5c6db2dfca7820c90c8f6c02e59acf9afd74ba3d7143f980b0898203dea0a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5a169249a365e8e08d06caebce3b58d4fe8ae8b20f7f2dc0abbe4ac4928e89fc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "9b7a25e9870711c3ecd3b5add867340e193f8dc6deeefb2618b96cf183066d15"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
