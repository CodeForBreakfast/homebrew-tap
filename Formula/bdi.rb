class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.6.0/bdi-aarch64-apple-darwin"
      sha256 "c733e1ef5f93a8963aff75347e4e6940a359156ba1e291655cf8f39ad859b94c"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.6.0/bdi-x86_64-apple-darwin"
      sha256 "f71867356f6b5c7fc24f539a5f540651feb7d435ed65ff30c8283213e38ad2f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.6.0/bdi-aarch64-unknown-linux-musl"
      sha256 "44668c863a4a080aec817887b4ff4dd61ae2996d20f538dc3c8bb996e02ddfb0"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.6.0/bdi-x86_64-unknown-linux-musl"
      sha256 "a4c159c3bf44f9402d69e6667ba67ce42c1c07bc670820c2e2c019d80196f03e"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
