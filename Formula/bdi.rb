class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.1/bdi-aarch64-apple-darwin"
      sha256 "4d035cd176bd7053d25998e426093398b6a5589183249931129263ff1facb805"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.1/bdi-x86_64-apple-darwin"
      sha256 "c172df40c187fb2337f1acac5ffe9c8bb22358d31c2e21313743aff5666a6e31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.1/bdi-aarch64-unknown-linux-musl"
      sha256 "d0b401119cc1e5cf8053149376cee5e62158b0fc31d4d1520fe53b1762e6dcc4"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.31.1/bdi-x86_64-unknown-linux-musl"
      sha256 "b495ab533fd88570d83d070a9aa539dbaf0f46cfbb1e7ec361ef9284002aaae6"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
