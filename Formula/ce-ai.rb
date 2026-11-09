class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.9.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.9.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "eae0791a290122ab2bd3d529844adb3732ad408f8cc3a9b1234d8c8d73301080"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.9.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "00dc2e8a10a99d15820ebedc6a7f6e1d2d4c8de6694642182476fd6a3f43ea52"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.9.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4626781c6f36332516914c5947b8395ed5387cb1b613cc2426be5128fc1acd54"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.9.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "fbbd3229f7b8dbbc3d0b8df3c605ed72fd71f06f152db06bd7e5f43f6566858d"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
