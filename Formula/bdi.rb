class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.0/bdi-aarch64-apple-darwin"
      sha256 "7a6df286f7c69a6bf772d02a29ff397b208716827393c68c84f7d8e6328a4f7b"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.0/bdi-x86_64-apple-darwin"
      sha256 "301903961d119746fe7c4b5251123ff732970c4b460206af58f72d64567776c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.0/bdi-aarch64-unknown-linux-musl"
      sha256 "98c00fc1233596f4b5e4f15c0a7beb667481fdf7c27ebede5bbafdabae15cc9f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.32.0/bdi-x86_64-unknown-linux-musl"
      sha256 "f07f5359fb36479a40e29a98b35e2edfc2f4f0c58a20951917311c3437a29978"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
