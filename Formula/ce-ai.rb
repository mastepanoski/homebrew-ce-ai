class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "2.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.2.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "00bd4dfc89611613094c0486229b27cce1fa6f90a28cebdefa3c55502b30c3bd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.2.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "4ae4214e7b249d7504bc82bda2cef88aca4d27673cc3e8b868a5cf7ac98013e2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.2.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "11738e231069e7a60df88189ce69ee8b7f70fe29c110543861eb9f81983488b8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v2.2.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "bba25464efd5dff8c63a672c571f92921868b8795784c306234edcafa14b643b"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
