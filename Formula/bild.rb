class Bild < Formula
  desc "CLI for image/video generation and editing as a unified provider interface"
  homepage "https://bildomat.com"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.7/bild_0.0.7_darwin_arm64.tar.gz"
      sha256 "7f90119a08144f91cf0fc2e02ff80227d1a080aded7f466aa0b302cb35ed4267"
    end
    on_intel do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.7/bild_0.0.7_darwin_amd64.tar.gz"
      sha256 "41441867cbdb926666ca3f09bc84a48d7a273a14daaa83df4f796df361a22d9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.7/bild_0.0.7_linux_arm64.tar.gz"
      sha256 "9be96284879d4dcb1ed8a91580795225b663fb94fb6eb973e9cadde6f1f60427"
    end
    on_intel do
      url "https://github.com/shdeen/bildomat/releases/download/v0.0.7/bild_0.0.7_linux_amd64.tar.gz"
      sha256 "b76dded6b2d350a54d4f2878513f2017d4e7fd5b043404c0d461ea5392c832c3"
    end
  end

  def install
    bin.install "bild"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bild --version")
  end
end
