class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.17.0/bdi-aarch64-apple-darwin"
      sha256 "f4def79022cda3d68de343b20eb5ea614a30c4d0bd830b1c82ac6824f424bc94"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.17.0/bdi-x86_64-apple-darwin"
      sha256 "26d5cfe4c8581f8a5c04fae8a8b60605ce8b0702b7baa5f14b2e885b3130383b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.17.0/bdi-aarch64-unknown-linux-musl"
      sha256 "76b18ee27cbb707070e10ebf37addf1fb33749444e0096d7d81648ad7a1f4728"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.17.0/bdi-x86_64-unknown-linux-musl"
      sha256 "122077f9d86d35f56e6ccb656724fec9b7570b5d19d92eba17c0eb568bfd3c27"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
