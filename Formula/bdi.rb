class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.0/bdi-aarch64-apple-darwin"
      sha256 "128d620fbbe3f0ccf47713d090e62491a91164d7d35fe5fdb2ce4493b9d5f3df"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.0/bdi-x86_64-apple-darwin"
      sha256 "725bffffaa6151716e6004f518a08e7aad85e38fe9a9758c6ca635a69e6ffc7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.0/bdi-aarch64-unknown-linux-musl"
      sha256 "82e57a1c4a560a1814934dc2ae7355aaa36163731e64dacd7b98c9749a75770d"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.0/bdi-x86_64-unknown-linux-musl"
      sha256 "d027f895f03fa4dc28198279bcbac59714211d4a004c0be89855a2e33befae72"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
