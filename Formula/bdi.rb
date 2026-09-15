class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.0/bdi-aarch64-apple-darwin"
      sha256 "9be2f6d07c0db980e97913913343b75733cdd38fd8c2aa20c1d50ffc1aa05404"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.0/bdi-x86_64-apple-darwin"
      sha256 "287748d8b29d44ac01fe176b6fc21a970660977ad1ba41e03cc38bdcb2a33c77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.0/bdi-aarch64-unknown-linux-musl"
      sha256 "7438ec81115fda552410e1759edd0fe62fe48990de3afc83e8d2e7735758192b"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.0/bdi-x86_64-unknown-linux-musl"
      sha256 "6fc4e0c894a4ca44c5454700842fe1868c29d58d65da74d3ecb61e5e95941641"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
