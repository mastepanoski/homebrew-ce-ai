class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.62.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.62.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "02409629e2830358f5006cf29e61eda6bb3881d1b8a4f575e482e9dbaefb339f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.62.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "babbada4971980a086960944089c5a5ae8b8a82c1fbebf3225d3c367dd4fb909"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.62.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e6cc0ea1c608b1161d86fb16828123b0f7b548a55a80d8966b55d25d0c6ba1fe"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.62.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "c3fa97f9fc90ca74e8ba0d9ed1c7e1301d00213c178dfefbca5bc4379e64687c"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
