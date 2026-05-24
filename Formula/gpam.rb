class Gpam < Formula
  desc "Terminal UI for Google Cloud Privileged Access Manager"
  homepage "https://github.com/michalskalski/gpam"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/michalskalski/gpam/releases/download/v0.1.0/gpam-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a464959dc60062232cea4e5917d382c73ff060f309d8f9f2580c17e62f56bb45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michalskalski/gpam/releases/download/v0.1.0/gpam-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1c9e93ca08e89c058ecdad1d762c34ce37dafabe39cd82765c8074c2203daba"
    end
    on_intel do
      url "https://github.com/michalskalski/gpam/releases/download/v0.1.0/gpam-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e4dfac36128a1727c952b77707ed2156e9354c27293bf5178b9f1c7eda04f2a"
    end
  end

  def install
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    platform = OS.mac? ? "apple-darwin" : "unknown-linux-musl"
    bin.install "gpam-v0.1.0-#{arch}-#{platform}/gpam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpam --version")
  end
end
