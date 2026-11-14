class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.12.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.12.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f6cf8cd0df51b8ae108193c750111c75d1dcbdd8098357b8e9136d596903da5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.12.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "30ddc9503cad8e9763ba4b35c6bc9620d45ce52e1c7f2c4b4c43a23869d3b243"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.12.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "60a6c8bb98ab0e5497a963fa9a18b368211c05b95807ee97827010b9be7646b4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.12.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "a3d676b8308275fa8ef1b69b148115d81fa9a48dee76faaeb069b4252e32c72b"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
