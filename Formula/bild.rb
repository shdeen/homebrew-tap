class Bild < Formula
  desc "CLI for image/video generation and editing as a unified provider interface"
  homepage "https://bildomat.com"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.5/bild_0.0.5_darwin_arm64.tar.gz"
      sha256 "2dc428f86b8f9a74d4458edcfde9679c8f8b81274877fc754d3a29d27a3d3a19"
    end
    on_intel do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.5/bild_0.0.5_darwin_amd64.tar.gz"
      sha256 "7cc32d0c76bc5317d322837c8b9413477e73f45ac3f149c8800fa8e2bbd6a0a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.5/bild_0.0.5_linux_arm64.tar.gz"
      sha256 "ca3ef5e15c71ba15af9bf63ff34e06fb626cf1140941ac3398f880c03798ed5d"
    end
    on_intel do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.5/bild_0.0.5_linux_amd64.tar.gz"
      sha256 "2050ebf3a116057079179d51d9a6b1a02dde6b6ff3e3ae980168a01f571306b9"
    end
  end

  def install
    bin.install "bild"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bild --version")
  end
end
