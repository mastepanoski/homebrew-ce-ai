class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.74.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "4ccb1a3d103c68134c1b94e07e0630cda1cf603830d96ac533095fdc620ffd58"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "8211ee4819a40420b15c8b586ab3d0314fd8e17afc12c832553e144a19b0ef7c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ec5e2d5981b0c472e76ea02d0ce635282492290d040ae521f8d49040deb0d853"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.74.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4b47cd945ad8d056b8553321127dc4fae363527941f00d8fa08ba8095e9a31e5"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
