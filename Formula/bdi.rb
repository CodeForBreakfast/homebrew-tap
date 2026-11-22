class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.41.0/bdi-aarch64-apple-darwin"
      sha256 "9805b4dfb9d234db03e9d5f9f2a1c44db0f372b9f5c7243bbcb17330bfe02bf0"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.41.0/bdi-x86_64-apple-darwin"
      sha256 "f5868b9833cf04785af4808427830d6cb1e1f3a9e3a293111e924577cb5c370c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.41.0/bdi-aarch64-unknown-linux-musl"
      sha256 "69ba752895344f1b6e97334db0ad5b91e54f7757410a40b8d8aee79f5d1ee271"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.41.0/bdi-x86_64-unknown-linux-musl"
      sha256 "defd82a59489b26bab08f8177f596baec2192018a8cf200f3e43c6dd7a053a15"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
