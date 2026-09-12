class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.8.0/bdi-aarch64-apple-darwin"
      sha256 "f36eae2b79c5c3c1d69b80330794c51abfb88bde1ca6af2245239bce088639a1"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.8.0/bdi-x86_64-apple-darwin"
      sha256 "164b7c576a0bed2282dcc43ef481c2aea0ce998fb4971d82b0bc30352b11008b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.8.0/bdi-aarch64-unknown-linux-musl"
      sha256 "3365158743b76a17a1ce962f28c83197ca61c6ea0b338b2bcdea2a437314874b"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.8.0/bdi-x86_64-unknown-linux-musl"
      sha256 "137d4782879f69b5c2f1419440ce62daf146f022663ef05b4ac0ea4154c8a925"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
