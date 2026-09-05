class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.39.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.3/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "cb2ecd86a18796a6a5d67fb4a9043181c78cbcb8c7e09ad1c82ac2edd70ea8c7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.3/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "38e8d8e7c77c404ec98fbbd6c816a72b9330f7fdf5a721b328dced0a290ff487"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.3/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b3a032ddefaa643030bc30f9dea645e6fe0464f5622c500dd49432193dcd8f4a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.39.3/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b0de410acff4c999ad1d0522b4c9f0d0decdf78ab056321999bd9a120c7dc194"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
