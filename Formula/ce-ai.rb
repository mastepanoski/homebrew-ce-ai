class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.18.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0c39dda337a91cc828453a6df9033c77629b765ca19c28ae971cde1d44b22686"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "82301497403719ce23c97fc89a75a85ee4e3ed46b66e1446208adfde79755824"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bac4b6b065f276597915c707651f19df820980c94d6a35cbea28526b10a622c4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.18.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "bb9bf99950c138bd39148b8b464b90ba32495fea1383a728a35bb2519aca1e84"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
