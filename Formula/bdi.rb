class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.39.0/bdi-aarch64-apple-darwin"
      sha256 "28a9b46263ff9440774092a3921f4924b32646a52856e08f9d75b27978214628"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.39.0/bdi-x86_64-apple-darwin"
      sha256 "4b4e0c0a4c9f01c41e9991a30a19f9e07e97b23217e81e0a9200338c336ccaa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.39.0/bdi-aarch64-unknown-linux-musl"
      sha256 "a8d4806aed5eb2b3e6c9f39dd1ab6c44b231157afb223a0b816473292214298d"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.39.0/bdi-x86_64-unknown-linux-musl"
      sha256 "7478811e8e307e53915ae687cefc26f702b6b73882c9629a7af5f06e13b52945"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
