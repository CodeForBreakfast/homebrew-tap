class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.33.0/bdi-aarch64-apple-darwin"
      sha256 "3fa088a9463e9d7ac6753022cf9f69bf79e21432ea9681d348a4f978b29b04e3"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.33.0/bdi-x86_64-apple-darwin"
      sha256 "d4131c811352e8b2fe367d95ee76d88d55b80dcae51817eb76408b247986049c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.33.0/bdi-aarch64-unknown-linux-musl"
      sha256 "e8d87425d1edf67c2790b71097b8063c1716f521ad09dce8890e01ce43147b76"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.33.0/bdi-x86_64-unknown-linux-musl"
      sha256 "99574d55620b5f3d7ec293d4ca0dec2e53a84c465e616a7ad8d33a8369986e3b"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
