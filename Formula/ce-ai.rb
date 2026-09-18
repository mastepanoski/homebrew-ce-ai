class CeAi < Formula
  desc "CLI for managing the compound-engineering plugin across AI harnesses"
  homepage "https://github.com/mastepanoski/ce-ai"
  version "1.60.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.60.0/ce-ai-x86_64-apple-darwin.tar.gz"
    sha256 "301acbadf61c5a654828b8a2622effbe3943fb5acf53e0125f9652ea56245c7a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.60.0/ce-ai-aarch64-apple-darwin.tar.gz"
    sha256 "5be8d4fcfec08ae68948c0583259df16cea0b4552cb282ead76c6f3ef7574cba"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.60.0/ce-ai-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ddbafdead2b22408d38c32eb77a11a0372503c9751688529d9344a5956423626"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mastepanoski/ce-ai/releases/download/v1.60.0/ce-ai-aarch64-unknown-linux-musl.tar.gz"
    sha256 "c192ce3e839a28db1acefa7b813ab747665564116ad5189f0124baaca3ee10b2"
  end

  def install
    bin.install "ce-ai"
  end

  test do
    assert_match "ce-ai", shell_output("#{bin}/ce-ai --version")
  end
end
