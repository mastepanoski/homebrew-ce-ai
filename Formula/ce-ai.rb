class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.40.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "be829d862d50e767b01204f5a685a926a9a0d601477da920729b964be744bba2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "b06a4a474ed7ed129e14adb75e5d73639e98a82bffcc658889d4cb8825a451d6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c3c38bd3811ca9bbca4387a726621fbecaee94e3eaaebdc08efa256780aef6d3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.40.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b38431f3cdf545e84d8f9960d23620ebe8b3d6aa03161e488a15a220ccda84c8"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
