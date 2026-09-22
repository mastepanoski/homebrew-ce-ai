class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.66.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.66.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "0f0a2267f68804362dad0e26843d5363b66c4826dea2f0d42fac55052e22e3a8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.66.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "bba348f171499e1c813b6805a703e401085e25d4e53eeb18207a3be10f66792c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.66.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8687870beca60ca8951715fc61c2cbb4fd10e40ef148d67b3ccbe550dbee93f7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.66.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1917ba525a418c0c3f5781618e2138bbbfd5bc60bc1852313e6706b7ed8bc16e"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
