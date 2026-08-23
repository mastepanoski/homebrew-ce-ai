class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.7.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.7.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "d76b9745c2f8cd5e30b0ec0a4ab1f3b64e3dc727775f27df95a83b4231ff2c1f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.7.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "51cd0795cd92abb9b428028e85f3aee231bb9c455e474d177d6fd421c0f697f3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.7.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b9fae26722f6352b54ae10564bd2fd876d7346f37ad64c33c1ad3b4dfa1009ea"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.7.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5eb6ee5abd577a52438f8f9677522ce6cd26211d48c0316ed65826dce85c7889"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
