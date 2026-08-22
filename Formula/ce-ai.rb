class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.3.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "076ae1a3412b4b71a8e64007fb4b9bf1a8908ab5ab00074a77fa73cf0434f77d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.3.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "a08559a3d6a55d90b1b51cee0cbdd85ed69dceab2253b348d17f48eda2c3511f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.3.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "385714fe1517e788e23d1d4e4e90bdb2b0b975ae031b0b76b381501031156ad2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.3.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d9ea062c0ab0df2475043cd1de63a45a08af0735e7ad7bae3cc6391e25d53371"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
