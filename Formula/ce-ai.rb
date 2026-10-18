class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "3.1.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.4/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "7143d4c8669c097574ee6d5e26ead65d3a32ad3ec780584f35433e6d5b85cc2a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.4/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c9b360ef3ecd8add2eb51a9823366af010e8ab09460255ca0deead4db2b5b34d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.4/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4c5b3b0c7faa19fca21b379b95b93a9d658799141525c8db514a00740687a1b3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v3.1.4/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "40e8ba7d6fbf9b62d2508b5561dd56cb51b8adc789fd72daf20408d11137f180"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
