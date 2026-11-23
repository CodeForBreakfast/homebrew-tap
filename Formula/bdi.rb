class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.42.0/bdi-aarch64-apple-darwin"
      sha256 "8c9229c38e0f3a09ff9d5b300a67b76326763090a3c4facdbaa1d9df75a12c27"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.42.0/bdi-x86_64-apple-darwin"
      sha256 "2faf2677af73c3dc36b085c47895bbae8c6f3c4b7c09ff920d866285778bd352"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.42.0/bdi-aarch64-unknown-linux-musl"
      sha256 "4a8330f39bd217f1b3b371533a4a715e1473ac165e5440da034cd5f6903c4b70"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.42.0/bdi-x86_64-unknown-linux-musl"
      sha256 "9a4ea9285b279ccab5ac4a9e5452ccee7afb47f7247886b9ed4be40dd10aab3b"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
