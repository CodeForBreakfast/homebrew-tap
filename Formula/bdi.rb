class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.5.0/bdi-aarch64-apple-darwin"
      sha256 "8551184d42585acabde14844b4caa4a1dede641a7918992d71c7c4e12fcab9c3"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.5.0/bdi-x86_64-apple-darwin"
      sha256 "848822107a6fea3f5904a0ce01f4c40fd64156b7f6bc529dfb108faecf6e4aca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.5.0/bdi-aarch64-unknown-linux-musl"
      sha256 "a6be5b8e1a26cbf6804967b4190ad4daeaff01cc7c963131260a1c6f9862f6c2"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.5.0/bdi-x86_64-unknown-linux-musl"
      sha256 "43d925dfae3fc9f3bae216ea162557f487e91930a6f38cfa54c016958b4a3647"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
