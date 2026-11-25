class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.44.0/bdi-aarch64-apple-darwin"
      sha256 "c912964b0b0061fa5d9a48da49fd7d95f9e72540bdaaa25363c3fd870858dd61"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.44.0/bdi-x86_64-apple-darwin"
      sha256 "d6e8d7b6bbc95c071d794428d12c4321d15e638b00b7928b427b93ad274f684a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.44.0/bdi-aarch64-unknown-linux-musl"
      sha256 "acca71dee8da8ebdf36bc392790bb255bc00a06e13e9526eb76ec198c7546bac"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.44.0/bdi-x86_64-unknown-linux-musl"
      sha256 "ad1268b23c7a3c6a3c4cc3987f25e871a2cc95f806d5ddb57c5c88793145e747"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
