class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.4.0/bdi-aarch64-apple-darwin"
      sha256 "24552fe9b9434bb5c09f58deabfa2149c02d2f0ed66a1b17b4d03ca48996bbf3"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.4.0/bdi-x86_64-apple-darwin"
      sha256 "d1bb981dbb9f94ad93603d5dc889ee7b1a8d81861f6e087245b3c6ad93fdbd98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.4.0/bdi-aarch64-unknown-linux-musl"
      sha256 "ad7275b5386976ce1f8c867a7785fe444d6c1e2e93b6f07d0539adef3bf3235a"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.4.0/bdi-x86_64-unknown-linux-musl"
      sha256 "2705f4a29e12805e95386b09027ed8a7f329957bdb578908041793fd45617828"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
