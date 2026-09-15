class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.56.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.56.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "b1f60e15d1fce1549f8e907e230e8039ec46f53fbb74f732019cb7ff3e9cb9eb"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.56.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "1b3a0185a1527238d75281fd0eafb1f8a7a0db84c857384f3dd6cfaadc23504b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.56.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "caabc735d3ecaa31374e66c36e4cac8fb36262eef0d3953276c34d940e81c38c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.56.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4f091a99bf905524c9589bf5ee4d9872d79ab38ee0df1d63de845b872c8037ba"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
