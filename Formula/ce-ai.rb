class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.72.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.2/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "80dc46472a6c9c6547c038e34164ea50393eae0edbb96aac48170e1cb5e3ad45"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.2/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "17eadd67664813fd8a0dbdaf7336bfe985a255e688881c030eeeec8e12655129"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.2/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2f3d0d37b7ffdc37684d33491deb090cc37b3766bf0722483ef3d46976c0646d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.72.2/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "e0ecbb038e9c4352c4ce47d109148cfbe92effdc1b670d85870e718c96a272d2"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
