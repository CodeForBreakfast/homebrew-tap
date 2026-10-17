class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.0/bdi-aarch64-apple-darwin"
      sha256 "3de4da73797172cb12f17e2a569693630483f3f0e722c2e5be8f13b3972d17de"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.0/bdi-x86_64-apple-darwin"
      sha256 "7205a33312d5dcb965a28bcee03de4bd39d507360ea39f884bf91aa4a1fc962d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.0/bdi-aarch64-unknown-linux-musl"
      sha256 "737ea991f47397c2d5dce907e65979225ea273479cbbec85f90e4e93152d06b1"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.0/bdi-x86_64-unknown-linux-musl"
      sha256 "98940fb0c5166d90626cff6a1e8e9e2e0687d1203edadc1d8e9aff02ed2187d9"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
