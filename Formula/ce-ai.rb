class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.75.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "dae2f7b8f6f4f09b3f6e440bb324348297a805b1f512ee3761598ebd8a9e2d24"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "ae854bb6603cd69b82edc78a2c309e4d71f388ecb12d704f69c4b1e4a292338a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.2/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "19fe10fd4db070803d30f7251870e6f1f05041c6a51afbbbe3f9a9d96ba37135"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.75.2/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "6b0d53c48356df07a9b3736d31f92789177a866674b7992ca94c54ff5767cf02"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
