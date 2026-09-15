class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.1/bdi-aarch64-apple-darwin"
      sha256 "d593471b3c2ffd6a7680d55f0569e24aac7f52693f7d2dea5bdd072a2f7411a2"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.1/bdi-x86_64-apple-darwin"
      sha256 "1a6c53aace00aa99cf20753cf526029be7e99b6b888c08a2892a7813e432de05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.1/bdi-aarch64-unknown-linux-musl"
      sha256 "c71ad1172f300cf124ff431e1fed0b2a795d6ca1771acdb2bc99855c4a54abe2"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.1/bdi-x86_64-unknown-linux-musl"
      sha256 "cfe57177242e50b232fa263319ca8bdb1c5a740571b8d7b0053bd75fb2afa779"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
