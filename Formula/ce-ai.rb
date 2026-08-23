class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.8.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.4/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "00a22edf3e5833c86eb5730f494063e9592cd11144afd827011d424fa99c7165"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.4/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "a1f81112fe9fe874c8ad4c4475e8f8c02d503924bc8c42488b7616a5adf4f0ae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.4/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d6bd6ff64762d33d20a03952dc6b1ab3176401c49e1b32e967953f07cd907cf1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.8.4/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "6a7c71ba192b8691da1ea2706c6d06da0055e0c764048f2bd85ebc036596013a"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
