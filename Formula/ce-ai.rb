class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.48.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.1/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "27806cb5e72f85c71ec200c9ba0981b39d8f0c3b4108acf7e56ba3610ac10253"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.1/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "e39736ffd3f79bfed692627da4971524a20d0ad618d5da14555ddc74ca187e5d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.1/ce-ai-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef4ea719216513d778af4892351cde725fe8db9b6d5af34046e23aa345832d43"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.48.1/ce-ai-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "191b56f5cf748f3312cebabf8e0ffe123515c8fbf059580b529942ce6ab7f321"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
