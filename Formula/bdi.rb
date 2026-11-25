class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.45.0/bdi-aarch64-apple-darwin"
      sha256 "5b39a48f74be9614db5f456ff57a73773220478aca53f7bf5b657c2e7b3c93a0"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.45.0/bdi-x86_64-apple-darwin"
      sha256 "1701ca9e142dd8e651ed549fe0fddb1f2f6f09e05a580311e44de83a9b49f503"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.45.0/bdi-aarch64-unknown-linux-musl"
      sha256 "3adb353e19d1a96ac8c9cc033c3629ae18a4ae50a61f46b30bc4a6c3a936e2ec"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.45.0/bdi-x86_64-unknown-linux-musl"
      sha256 "963447a95bf8418d129161d3cd83b5cae9ff71570bb73412fa687f66ca26c5dd"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
