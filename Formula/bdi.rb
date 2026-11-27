class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.46.0/bdi-aarch64-apple-darwin"
      sha256 "0cbefaac743508c54c5ec4a159df32303ae366c952acb1fd67ac59762c180751"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.46.0/bdi-x86_64-apple-darwin"
      sha256 "9b9e295096a87ffc24eeb813550a285838cfdac17694ce7f7bb3446ad5ccc643"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.46.0/bdi-aarch64-unknown-linux-musl"
      sha256 "a694695ab69e01d0c53d75fe5530df04bf160ae04fb591252e1706a4e2d5798f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.46.0/bdi-x86_64-unknown-linux-musl"
      sha256 "9725986002a21eb0e6f10fada13b95e8a0c61e9c93e8e9c91c2c4bc362dca438"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
