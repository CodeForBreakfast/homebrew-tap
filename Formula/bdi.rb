class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.12.0/bdi-aarch64-apple-darwin"
      sha256 "bb32f22cea5a9d212982d7785bc1d0fec048e129213d93041b47b0f362cbcdcf"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.12.0/bdi-x86_64-apple-darwin"
      sha256 "71869653cbc2497d25213e7a1fef8a4ddd35af8f891cfd08e506b1e2a6efe221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.12.0/bdi-aarch64-unknown-linux-musl"
      sha256 "5e2ef87af84e6624dec438a6d396e4998d1b6a8f526b84bde4bb3a21fc76bfaf"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.12.0/bdi-x86_64-unknown-linux-musl"
      sha256 "b30741dda9552c68fcb8c706fbc856ffcbb45f70429c8ac947d3dde65aa38d80"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
