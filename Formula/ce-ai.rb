class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.15.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.15.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "2e758a8302eca990f89e318dcd9cd3973802ea256e7c560da2f457647c253761"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.15.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4668d4aa97578ba0b6c6a2639e3f1d497fb90dc504b31e73984c06819587f650"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.15.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "77fd4ae81f997d438e8083940ab9699a02c253a2321d83fab08bbad94d91fb27"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.15.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "bb787b6b8ae0a921e36ea37959d078a9e5bb879bfb806462d264442ce6e57eaa"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
