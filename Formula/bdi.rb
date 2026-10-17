class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.30.0/bdi-aarch64-apple-darwin"
      sha256 "5c5279c421ac7afd3a3532fd3909378d4f6c7eb1ce1ba1d192788da0ce5c11a1"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.30.0/bdi-x86_64-apple-darwin"
      sha256 "6ca1029028c8f81b56eb3364eefe95a2b661edf906411ec165f535d34ac53dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.30.0/bdi-aarch64-unknown-linux-musl"
      sha256 "b074861981b50517f2d7558a989bd9eb82b6be9a6d667c673997f9df8a524210"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.30.0/bdi-x86_64-unknown-linux-musl"
      sha256 "16a2cc3001852e15658f230108c7cc89db7409abf53e8e2286803e81a58f6dd7"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
