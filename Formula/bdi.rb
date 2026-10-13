class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.0/bdi-aarch64-apple-darwin"
      sha256 "d218e22896ee5edf52fa9851d5b57f2502846926b3d3c8c233b8005452f9f99e"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.0/bdi-x86_64-apple-darwin"
      sha256 "bea2fb6c476276d57efe3fb0c0e3c8a762d6bfbacd189c3782da23aa02510274"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.0/bdi-aarch64-unknown-linux-musl"
      sha256 "f28e69f7fc6e437ad5c71c9dc12ce6c1b3535d2a96f2a938e4670e4c724c30eb"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.27.0/bdi-x86_64-unknown-linux-musl"
      sha256 "fb2f30a61a3cc0ef75d9ab50a82328a3bd759c02a8e31c0bed1adad18dc6e38c"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
