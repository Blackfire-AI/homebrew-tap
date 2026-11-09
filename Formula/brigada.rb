class Brigada < Formula
  desc "Coordinate coding agents with checks and cross-reviews"
  homepage "https://github.com/Blackfire-AI/brigada"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.2.0/brigada-darwin-arm64.tar.gz"
      sha256 "010dd4e5f3eb09c3f37b6d14bd69ddd7cfac2f83b23d27bb57a04ea218b11054"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.2.0/brigada-darwin-amd64.tar.gz"
      sha256 "292e993b808b12f11f32a9187e7ec77d403334c06b654fcd8fa53f6464977c37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.2.0/brigada-linux-arm64.tar.gz"
      sha256 "52bdd38f74d5c6c49e611e9cf8df68cc4fff0e69e9652ccdcd14ad689883a4c8"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.2.0/brigada-linux-amd64.tar.gz"
      sha256 "c40fb9a1edded5a8c8b89f385d8418b040ab951e317be30a5140a409359de3df"
    end
  end

  def install
    bin.install "brigada"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brigada version")
  end
end
