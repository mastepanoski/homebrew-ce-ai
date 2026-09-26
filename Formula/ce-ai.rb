class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.69.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "d29c349346c7ab5a73e3082ba2a7709bbda37cbb0463ca6669f41307ae235852"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "d53e2b855e8620a4d05673669fed85f4d7c1400df70e8ead9a611c5822a8a148"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.1/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2a7cc86c900f756ce6a61d5fb7496ce00ca9621688dc29c50e84bde86b347eee"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.69.1/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "da3068d76b15f4d73a7e8df98293a3a72863480b4ad6ae3d7e4bfb7313d1b8a8"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
