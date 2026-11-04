class Brigada < Formula
  desc "Coordinate coding agents with checks and cross-reviews"
  homepage "https://github.com/Blackfire-AI/brigada"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.0/brigada-darwin-arm64.tar.gz"
      sha256 "8eaf3e39523bfe90f5cf760271aec777168bc653ba70d1b63b308c528e5c5c47"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.0/brigada-darwin-amd64.tar.gz"
      sha256 "70fa162764833eec386d06482d1d99515ebbe8323fbc35697e7d1a29d51fafa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.0/brigada-linux-arm64.tar.gz"
      sha256 "88eee3512a024a3a766bae7695a1f969e20f715f1643eb009223e6c91771d38c"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.1.0/brigada-linux-amd64.tar.gz"
      sha256 "fa23e7e56dc83229f8af252390ae9e8a5bad02ee960f257e397e301b76fc65d3"
    end
  end

  def install
    bin.install "brigada"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brigada version")
  end
end
