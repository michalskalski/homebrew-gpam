class Gpam < Formula
  desc "Terminal UI for Google Cloud Privileged Access Manager"
  homepage "https://github.com/michalskalski/gpam"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/michalskalski/gpam/releases/download/v0.1.1/gpam-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b75b28739325a7643e8611bdd2116a9a2d378bb28ae55c38972945a5249e11b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michalskalski/gpam/releases/download/v0.1.1/gpam-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ce8c8361900675edcd7fc14742d741f7fbdc8929c84df9e045a11adeb6967ff"
    end
    on_intel do
      url "https://github.com/michalskalski/gpam/releases/download/v0.1.1/gpam-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e389929bf52a74f3b7cde7c821dc34ea6175d0a8f6ab0694a143409ea319b62"
    end
  end

  def install
    bin.install "gpam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpam --version")
  end
end
