class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.39.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "b0391a4de67ecf928af0dfb4f3bf69dced72ea30f8f6658cb27ed2c47e9d28ab"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "15c3f6a59176a04185a8b3e4c3b2fb7b1ddd9746c4de165bb6068ca59a056645"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1aa3da1e39b604a23052226d48eb18a3fa4a4cac46ec09003324e207cb68149c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8db503cda7b30a2e2f01da03eaec74e4cee4d6fe7a7b99a344c30d0b8e811431"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
