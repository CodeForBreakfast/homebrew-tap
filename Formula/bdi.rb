class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.29.0/bdi-aarch64-apple-darwin"
      sha256 "4bb5454d3492cff245f7c110280116361ca7427138e652d43843f6cfc82dd1c7"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.29.0/bdi-x86_64-apple-darwin"
      sha256 "b1e4e625610b13acc4214a6d294264619c9a73fff19c37a5de9d16799a22ca7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.29.0/bdi-aarch64-unknown-linux-musl"
      sha256 "7ea39c7b32ea0565f82d42f6fdf70495dfea6d58cd079e829533a74670d0d037"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.29.0/bdi-x86_64-unknown-linux-musl"
      sha256 "8e0fbddfbe389919818150940d9ffdc96d3996f7cf37a3d5b0abb1b2ee1cb9bb"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
