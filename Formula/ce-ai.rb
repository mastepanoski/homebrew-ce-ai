class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.42.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.42.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "62c4a349b010c4ee71daabe2f5cd3e691a9a308d3e915ab53dc39238c404e4ea"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.42.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "3e9a16b0baa0a538e0e750d09e330a40422752e464c4300838f83abfd7bdc515"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.42.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e7740d11b3c29d319f4dfd917ae049468eed23afd48383f1a3af053c213ea67"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.42.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b41fad0ab4f50aa54921da452b7c2c176638de40bdd9301b9ad47ce6eb85f242"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
