class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.8.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "49fc1191355f48215e62c6aa8792207fd4248ee1b98dfe5b149cdbc00ab1c241"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "7fc22ee3dc421a66486df7e97bf4cd9335c7f13649b22d874742a00a610204ae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.3/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0686cefe471b1b72171dab3a0bb56b8e00b452d7c21c55b85a45db2f2b03303c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.3/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "76dc627bac25d39dcf18bbe795cd3c14998dda23c0c3abc1c1dbf7b9676262ba"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
