class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.1/bdi-aarch64-apple-darwin"
      sha256 "6523a6fd299ff42dacf6a5610bb6540dc2f7bbe8390ad7221364121d4e33dc9d"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.1/bdi-x86_64-apple-darwin"
      sha256 "83ec3b64ef42500176deec742f9773eb5c30d172e42856c57c93ca624d4306b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.1/bdi-aarch64-unknown-linux-musl"
      sha256 "44dd2c85c3b3619345ea4027f4c751e3559fbfb2e10f82e793eaab14d5b11fb0"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.1/bdi-x86_64-unknown-linux-musl"
      sha256 "56bb31dc99f7d5155a013870b0f2768e53de5805729cec685f4d0ca52c604caa"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
