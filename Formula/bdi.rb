class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.34.0/bdi-aarch64-apple-darwin"
      sha256 "e07e40f62c326e6650f44a47fe1c7fb30a93eeb4fdde23380c2b7af217e2858e"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.34.0/bdi-x86_64-apple-darwin"
      sha256 "905460ccef130c836422853fabe71a389b2783b203a6a62be11103f9fb40453c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.34.0/bdi-aarch64-unknown-linux-musl"
      sha256 "2de804fb9b7eec7578f7aa02e8fb3e621aa92e62befffae8f244a4673aafeb34"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.34.0/bdi-x86_64-unknown-linux-musl"
      sha256 "b2ff00dccfb1c886175910a0f26d56f6f3cb0540a2f35bd22147bce909ef5d27"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
