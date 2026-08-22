class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "6b00e6a7ee79dba09635371de680455f68e8689553b93818db5d97ee1605f1bd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "31cd7086d3dc1fb82ae21220d84904d4f077b9adef9c8d55e347d6addcabbe8f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.0/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b5382d51924a92f4380fd4c877bb79bd7eabe51ddfa288cdf5ae19c80003d991"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.6.0/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "aefe91bbcbb0f5555d506427b4236b0c649cf74978dd7839bf0e5335215a234b"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
