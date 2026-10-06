class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "2.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.0.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "8b3a34b3833c349da5fa30a823c75868cb13999fa21fe750ea831010c2d4c86a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.0.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "f519acf048e50d9f037d2dc20d9d1051a3a7638871556b477d161f5c51a9fdd7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.0.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "219c82274cc71e9eae360f4e297775ee4617205e42d8a7acb4c37e1f46a40291"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.0.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "a2eaf4a64b2630fdc002d0fdef6bd3326c65e8518d814093b0a7297ba1411bf1"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
