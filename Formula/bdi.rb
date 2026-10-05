class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.22.0/bdi-aarch64-apple-darwin"
      sha256 "a62cc0660ec4904854630e2c566574b852a14d35d235a9ffbf8a00fdc5425703"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.22.0/bdi-x86_64-apple-darwin"
      sha256 "1494ff3b703c197e4b2bfcac416ee609e992cf1e1e65c85be8dd39c83fbca70b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.22.0/bdi-aarch64-unknown-linux-musl"
      sha256 "e945ab9ec0bfad3ec3c8d4917fa2aff5f44510526a67ee0a3f1adce269866e99"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.22.0/bdi-x86_64-unknown-linux-musl"
      sha256 "41b2bf79cb692d89b1cff16d42cda656e777463e9edec06fd6cef9d508819bcb"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
