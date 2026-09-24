class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.68.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "5900b644d7a43b8f47e5af60167ac09f3c89ce2224ccc2334be84a8d8c23df4f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "17376ef6c6e94d9078335b70da9153b6791de0f2a4d61ef4fa3ff29098627527"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "adeb8978ccf8c3abdc29db5e2d51986b810c887378189fb7857cedfea6a7c93a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.68.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "afd0fa554265f8602accd4d0966f72905e28a69fc453460a2470b0f9ad1bb772"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
