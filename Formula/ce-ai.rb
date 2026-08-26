class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.25.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.25.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "871df866cc8a59a7c0574c9625c34d87ef1ba3fef14e9cc628c28e3b73ea3341"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.25.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "f049432e193544aa433cc25545e9dded480793459fd651ba5a744bea92cf2ed3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.25.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "71f044f4461a356a3783d68e4fda6d0a4d94f21b8082e292b72bfd2215920860"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.25.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b3329b934000a4eb936a1b7b517461a357bb47f7d517ca1d4c06783412266359"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
