class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.73.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6a8a6432c17df1c96dc56a5f2433ff37b8e303428828377016708817ec8889ad"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "e04fa5c279f69c094cc23e3a34cee42ccf3dba4f62be03dc34746342e72ecd03"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d5babc4c26ae8bdd2e92c5e55873f6f837da043e1cfd119c982cc87cdb575010"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.73.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "84b2ea81838b5871fe94d32069463f6af6f07600aad840c30480efead1253cf7"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
