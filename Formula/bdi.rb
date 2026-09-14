class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.9.0/bdi-aarch64-apple-darwin"
      sha256 "5cc582802050c5a02c7c43462b475651751d158c3cb9cdbc27c5f848e8b015fb"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.9.0/bdi-x86_64-apple-darwin"
      sha256 "4447aba0d56c48268f9304c0282636309b7b3264ba0cf72742dff5838706c685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.9.0/bdi-aarch64-unknown-linux-musl"
      sha256 "7dc69d6d8f154f522d54b871484af93cb60e665d62bca3b6dace9e5e800f6097"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.9.0/bdi-x86_64-unknown-linux-musl"
      sha256 "9224a794ba0f7d09917a238521be76147d943a878b1f161c0a921e8991dec001"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
