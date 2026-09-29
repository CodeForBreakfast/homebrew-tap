class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.0/bdi-aarch64-apple-darwin"
      sha256 "6b83b758fa22dfedca2ebfe57e39cb4294149a555d0cebad51603ba601266153"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.0/bdi-x86_64-apple-darwin"
      sha256 "353595e87338a7f73bce9898c67405513d62b048432389b7bd5c4dd9dc9da9f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.0/bdi-aarch64-unknown-linux-musl"
      sha256 "8070bc48bab0c8d32833e63dbe3abda54aeba2a36a3ea13c2e6d48116659144e"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.18.0/bdi-x86_64-unknown-linux-musl"
      sha256 "ea24b3ee19c5aed5565452892fe0cb81f3edfbabd5de6c5f38e85cf13a18af39"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
