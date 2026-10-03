class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.76.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.76.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "a33ae32f9283dc9ef689eb3f313cc76e8d97fff7b2e3eb291258adb174947a65"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.76.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4959e8b8050961d70381ec644c65d2661b3e41ca7661d6c50ebd45c9ffce62ba"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.76.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6eda480aebf94e8cec60945489b3cff4c82fa5ed6333352ef437769c16e09fb2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.76.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "c91584889a8338efbc91658fa14ada53d4c67ebce80b654177c7d0b0f51a426f"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
