class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.45.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "f204df5fc5dedeace28ef389c480354d68305317c502bfac2bc447f52818ae8a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c450ac2210151320f6a1c6a555a9e41a152e3734371e89296b890703abff4e8a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2dd75a758fb1e16c6ef89c4c1675e73a7b7fd438065cb66cf81827bc06452475"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "362ecd34e4832a6b97f032ee965a36e4d9b2eccf141a3207447479f715e17146"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
