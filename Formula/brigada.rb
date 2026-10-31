class Brigada < Formula
  desc "Coordinate coding agents with checks and cross-reviews"
  homepage "https://github.com/Blackfire-AI/brigada"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.0.0/brigada-darwin-arm64.tar.gz"
      sha256 "b4c9f81ef379df12bc73d6282dfe24a488b6ab67c02079df7630b6910417367f"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.0.0/brigada-darwin-amd64.tar.gz"
      sha256 "8fa749f61b9fc2bf6bf4a5c04ee49ff55d4271afba80f532cc492eb6bda5db3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.0.0/brigada-linux-arm64.tar.gz"
      sha256 "1003eb59619c2519dc06b9e699e0538a06274f687bead29c7537fa332335902f"
    end

    on_intel do
      url "https://github.com/Blackfire-AI/brigada/releases/download/v1.0.0/brigada-linux-amd64.tar.gz"
      sha256 "76e273b1fc562182f34038d2945b16bf5d12953d333ea210edfc36f56a33d215"
    end
  end

  def install
    bin.install "brigada"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brigada version")
  end
end
