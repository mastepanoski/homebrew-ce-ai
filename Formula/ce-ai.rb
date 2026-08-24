class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.20.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.4/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "3da87a5fbe65108292406ddecf46c6faf24d31ba372d431edc54f6870d0db473"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.4/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "c1faed6e7e9bb11b64f50d59b0ab3dc274809f2bdaecaeae0fbada6e8ed53062"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.4/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f61df4bda8944b02ce47511c6b004b199a9171e13fb2786a47bfd270eb91ad93"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.20.4/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "fc99f9931b8b5c9f1c11d44363e8dc4df0ceea02f96f774ebb1ec16b94a1a2bb"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
