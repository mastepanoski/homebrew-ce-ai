class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.6.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "58848677c74df27769818a30c457947f9f513b11e82c59b78a1ec4139988f188"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "936fef0577814455615e8c144d17b53e1f90f238492d9a8437ce520331ec606b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.3/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58cb8aea74eb495ac834d48094337fdb359539ad59a49543aa089cdf44b24058"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.3/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "70695e25434bc30d3f2c13700a8e7c41fe5687732cdaf22e1f307f55b47ea85d"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
