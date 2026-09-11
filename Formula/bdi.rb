class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.7.0/bdi-aarch64-apple-darwin"
      sha256 "6c81ad6f0b76d72e19fcb8864451217e4e2755017619278fb688ea74f38697d7"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.7.0/bdi-x86_64-apple-darwin"
      sha256 "570c9ba0ed83c1f28a397d574ac6bb499b0edfdfe9db5bbf03598cfbce6d9d84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.7.0/bdi-aarch64-unknown-linux-musl"
      sha256 "ba08e4da62cd55ed2e9f965a393570d55f2545de5f860570b59be7422457e614"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.7.0/bdi-x86_64-unknown-linux-musl"
      sha256 "838c5dff29164e30caa650aea9e8d4ac5ceefcee2243312f1ad03e856c0618d2"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
