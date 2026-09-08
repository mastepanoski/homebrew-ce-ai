class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.45.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "5444fc4d653fdd67e6bf82408d12bccd524656243c12c5df72fdc445ec57272f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "fa2df4c6172cd5ceb7804d36a38a5ac37702df68a6a756d907fb4392cf7c4c46"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "43ac3f5e64ef837cbc02b1452c2a7d556f834fa75a5a3cb0fbee2ec1b3d893c0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.45.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5a78ed0de2ef585fb0722122dca07791314894e9c3cb3d20acff6a7c2e7d9ba3"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
