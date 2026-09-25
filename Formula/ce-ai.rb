class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.69.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "16ea3179a87b8d2d636971c3a3a6ef7ce79e0c7af457b4f64a441fd09d9cfe40"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "20259f51fd92e8fa5ebf8cd7c4b9ae547a1ee479829833ec75ee468a510777d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "caf084f3b972e6b16196b6d1ba74389bece625286b049e85ed8898d063084e0d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "e9635901fda532e28997731d954cac4bf0d5df077a42b99705c36e504c436783"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
