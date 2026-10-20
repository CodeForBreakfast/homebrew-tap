class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.1/bdi-aarch64-apple-darwin"
      sha256 "160a2e33c56909438987584c94e0b1c72426a348b8cce00c4de453b61501cfbf"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.1/bdi-x86_64-apple-darwin"
      sha256 "178b0844fbd72ae4c1b863700fa6db76717f3ab22b44dd9013f33d896545bf7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.1/bdi-aarch64-unknown-linux-musl"
      sha256 "8305b34ddf3a002c0425b39ebcacf43f05c2a776bc44ab04808d9045ebcd4c0f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.1/bdi-x86_64-unknown-linux-musl"
      sha256 "9edbb01acaf5e7496dfce2da53b87e313e87d1c17cdf22bec95e75e1a72fb2ea"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
