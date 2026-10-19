class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.4.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "d4604b284c01cef9574fe5dae7e761f0134eaa36726d3afbaa48c0a9fc7490e6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.4.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4cfee2c9c8bac91797ad8d6dc28947c2c6ec9803f200366d9ba94bf690d134ed"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.4.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a57966cae7af4a8f1b4931929507c5d802ebb7b33d4df76f79882b6be753acff"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.4.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "6df4863e8eb577899631424f1387a9fac3283d695fcccdd3ff3847dae677a56a"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
