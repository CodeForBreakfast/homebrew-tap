class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.20.0/bdi-aarch64-apple-darwin"
      sha256 "dc5ce6cbcc4c48d577b38f1d0a5bb8d8a733211abe5cf506b71af1f51f97a8c9"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.20.0/bdi-x86_64-apple-darwin"
      sha256 "f193a69108081131216067393b2eadb1f7b62328bb8bdd9a33ef713179be6b24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.20.0/bdi-aarch64-unknown-linux-musl"
      sha256 "d4498903595879e14b806a15d30bedfd5500f767ff16037fade20ec302c146da"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.20.0/bdi-x86_64-unknown-linux-musl"
      sha256 "c952b40345b4883292b32736cb1bbb45a39df15b0e6f3fc3567c65ba82e41aa2"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
