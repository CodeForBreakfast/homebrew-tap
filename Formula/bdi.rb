class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.26.0/bdi-aarch64-apple-darwin"
      sha256 "6ce6d29190c1d79aa1e4bd3e698fb9f1b7dacb62b49120b42601cf65523e49aa"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.26.0/bdi-x86_64-apple-darwin"
      sha256 "32ab442e02f86b61710af712df5b5da692312272f6b1f240c640e57afca45eef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.26.0/bdi-aarch64-unknown-linux-musl"
      sha256 "c9da0520272ea82d2e4a32ccf8e9b679c7d9679ee4b1c664251ac57100818360"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.26.0/bdi-x86_64-unknown-linux-musl"
      sha256 "0561ec1251dd3002631a88158061626195bcbdfc479be98151e075410ce63ded"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
