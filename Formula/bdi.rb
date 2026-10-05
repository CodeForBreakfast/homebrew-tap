class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.21.0/bdi-aarch64-apple-darwin"
      sha256 "955014687b3187ac81db8164626b909853c7efb1c9fc500176febe1573baddff"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.21.0/bdi-x86_64-apple-darwin"
      sha256 "116b631bf0c69873c9831ed09f604431473d6b991f561fb7ebff7a88901a7b34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.21.0/bdi-aarch64-unknown-linux-musl"
      sha256 "b63fa5442e67e5acf3fc8263df4e0af00a6fa07342eb99c5e6dccc8ff276798a"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.21.0/bdi-x86_64-unknown-linux-musl"
      sha256 "50ca2b4ec17ee0674d2357d7a10a23310924624fcc0625bd4634bcba0c2f113e"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
