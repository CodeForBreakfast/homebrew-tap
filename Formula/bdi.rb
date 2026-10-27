class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.1/bdi-aarch64-apple-darwin"
      sha256 "455d087467a5f76c60ccc123bb9c9117395e37df3c9304bf6c8f2bac518c332f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.1/bdi-x86_64-apple-darwin"
      sha256 "a9d5948741067505b08836b4d4e4a3346646525c0b4fa55e6bc1f878bbcfa84c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.1/bdi-aarch64-unknown-linux-musl"
      sha256 "c0c522542c6556b5ef26f8e28c6a4153c16790323d8783246870930cf09484f2"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.1/bdi-x86_64-unknown-linux-musl"
      sha256 "e42f027252dd38b0f058e8daa2a1c9074cdcb4ae34270aee0a08a8c29a0ae1c9"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
