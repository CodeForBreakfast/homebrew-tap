class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.43.1/bdi-aarch64-apple-darwin"
      sha256 "c8780e45771c02990617cd6739f660b73fdbc1a1231e82cb925ebb3f64bc9546"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.43.1/bdi-x86_64-apple-darwin"
      sha256 "bb1d0628110b1d27a2ab62ecf126fae364a546859a23bbf1b66bd6bfd41ac4b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.43.1/bdi-aarch64-unknown-linux-musl"
      sha256 "7209a1bfd6a40bc65738ecfbb2aed10357cfff79edbe682ec9a6edac0be25ccc"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.43.1/bdi-x86_64-unknown-linux-musl"
      sha256 "d3f9f7666704de2196d861fddf43ef27fd1606a133215c32a5ef81cd0629f822"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
