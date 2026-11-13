class Brigada < Formula
  desc "Coordinate coding agents with checks and cross-reviews"
  homepage "https://github.com/Blackfire-AI/brigada"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.3.0/brigada-darwin-arm64.tar.gz"
      sha256 "5e9cca5ece64cadf36321fdfb8fa8341d2aa91362c840fedcaf37a31cdefe8cd"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.3.0/brigada-darwin-amd64.tar.gz"
      sha256 "74163ba87a9146f771cd7c9345bcfe1378da551a712c7dd552f4926e5c142ce1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.3.0/brigada-linux-arm64.tar.gz"
      sha256 "c375fe9f3cda19d3fe6a753c3eb8b2d7e653197ce6ee1ec484f04f10451d4ec4"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.3.0/brigada-linux-amd64.tar.gz"
      sha256 "4f11701de728e76ecebf179dba0a687bcf530cf4456863d6e30e8a7fd0b6f0f6"
    end
  end

  def install
    bin.install "brigada"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brigada version")
  end
end
