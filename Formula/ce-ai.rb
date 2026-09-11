class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.51.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.51.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "3a6b28b9cca61b489d40f682d9bf88ffa72fa2eb336faa6f7fa866cd7d564a56"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.51.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "6288ca5cceb9fa26cd9cbac428881095c330414884d1db101f97475429173ca3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.51.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7a5993159bf70b7700b410d7cc3285e43502be731b36af2e966aefccbc75cd5b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.51.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "37ec892c531daff0cdc9d2ca9d6c495f113d2b1e750d45514de280931927ed7d"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
