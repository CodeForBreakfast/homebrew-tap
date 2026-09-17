class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.13.0/bdi-aarch64-apple-darwin"
      sha256 "fb6f44fbfbcba1da0253caabdf578f68687d997e44de1019ad232ed719c7b593"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.13.0/bdi-x86_64-apple-darwin"
      sha256 "e535159e04b37d749f005feaa4f97c4225c79d864ee32243c212e898dab84f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.13.0/bdi-aarch64-unknown-linux-musl"
      sha256 "a6736aa01ad43e2cc4fbb7bfc0115a2908d35e5ae6c22c8ee3e4e87846014210"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.13.0/bdi-x86_64-unknown-linux-musl"
      sha256 "771225883a11583477c4dbf5efda2e4190de112523af9c60007788da94144dee"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
