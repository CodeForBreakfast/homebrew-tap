class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.24.0/bdi-aarch64-apple-darwin"
      sha256 "2b0a7f33c39a745caa508b86fb78dbb2b32fe49ff9ef589136f48b94a66b8048"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.24.0/bdi-x86_64-apple-darwin"
      sha256 "6508eb71382463ce85f41beef0926501901c656d4f40f7e681fdff32e8510786"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.24.0/bdi-aarch64-unknown-linux-musl"
      sha256 "74db680a347d0ce8297063b68f323b16ee937988f974f910f602c6b405ff6c54"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.24.0/bdi-x86_64-unknown-linux-musl"
      sha256 "8745fd1b9de7613006333bf252b52bd4e862fdead3b171e296510f0500522037"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
