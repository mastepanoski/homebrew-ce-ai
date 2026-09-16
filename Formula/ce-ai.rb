class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.58.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "3573a1ea184ba9ec43e2a29097dc05674f98574fd68d123d86f54d703af31019"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b46f1c6cc09dbd173c49acbd49a84c01efd57610ed90be623cc44bc444ad92cb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1330ea3fa06f1a8b9c7cde50567c1f25a19f10ad5b6a9374d91644c81bc7cf21"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.58.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "50ed6bdd94dd82319cb64ac26cbffc75458ee8bdb18acc055632986f1fd445ef"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
