class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.1/bdi-aarch64-apple-darwin"
      sha256 "35f7b8bc7a6dd7dc20e4b57498752bd2c2298a42b1313f9fc4b412a48b71dd58"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.1/bdi-x86_64-apple-darwin"
      sha256 "25bbc658c7678280ef523c8e89cb79ba9e9b84f321680001637a8dc659fffcd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.1/bdi-aarch64-unknown-linux-musl"
      sha256 "6631cd5fd2e87f2c68f18f9488905905d5a6b1f7cf58a1b6b7689eaa40347c37"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.1/bdi-x86_64-unknown-linux-musl"
      sha256 "0a4db38b366b1e2461f8a5f1e303be1fa7cb433891799525e69c3fe31dd9ab54"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
