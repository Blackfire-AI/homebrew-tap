class Brigada < Formula
  desc "Coordinate coding agents with checks and cross-reviews"
  homepage "https://github.com/Blackfire-AI/brigada"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.1/brigada-darwin-arm64.tar.gz"
      sha256 "72442baaee0a3d688fc2ddbfcae7752834fbee762432b9ab562821fdae34c71f"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.1/brigada-darwin-amd64.tar.gz"
      sha256 "41961cc271c62a02c8ff95c7d2abdc6bb2091a0915c5a1b70acb6a4d39abf9bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.1/brigada-linux-arm64.tar.gz"
      sha256 "f63f70474542601d6b9ff8f8f78f13bc717171354b6b781d0feff0edeb31b2c6"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.1/brigada-linux-amd64.tar.gz"
      sha256 "8e3abea2a0d8c32c102969101dd011bb5e54d2970636ab676fa782a5ad623de7"
    end
  end

  def install
    bin.install "brigada"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brigada version")
  end
end
