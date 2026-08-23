class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.12.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.12.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f821d31dd6fa5b9847d610c1b75fef18f3f337dca902333acdbe8a6b0c187a4d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.12.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "fa57dcaefa7ac98699af6ba19f532758191266e8d09e54981bb0862f7885bb5d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.12.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "668875efb7298aacaf6aca761e47775e1fd46740dd3e0c4c1faf10917bca3234"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.12.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "fc8879d5be4dc361defd89bd7f4e962a792a634a393c77d497aa063640eb7442"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
