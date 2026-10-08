class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.25.0/bdi-aarch64-apple-darwin"
      sha256 "7373fac00f43ab0c65f05daee050403c5d04a9f54544478560748b8f787d9fb2"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.25.0/bdi-x86_64-apple-darwin"
      sha256 "5be9f052fce422ecfa73ab9859f7edb5afc45c57eb19c642fc6406026c4ace50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.25.0/bdi-aarch64-unknown-linux-musl"
      sha256 "b7de729f56a86559e8e9e77ca07d13fd3c6ac4bb9259817247af54b674da17f1"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.25.0/bdi-x86_64-unknown-linux-musl"
      sha256 "49158a16b57f7412434fb6e0ad492c7673f63502c3a478aaa6c8e7abfccf8d25"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
