class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.64.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.64.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "c7f05ae3ddbfccce2a064d028da0a73e4845cd891246c9ff79c2579e4afb329a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.64.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "6345615e2e773ef6167c0360f090f493bf53d2a8191b691b4baaac5a47a90fda"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.64.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a268b2e42bfa6c326a303df29c910ce98959cfff8a4a5500788c1a0e60d9ad14"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.64.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "630823328f18104c25c5cd40cfd9da69b9a0f493feb11bc9fd03ba52adcdb4c5"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
