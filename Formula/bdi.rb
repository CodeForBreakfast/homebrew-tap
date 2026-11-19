class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.1/bdi-aarch64-apple-darwin"
      sha256 "39c584f7ddb337b0a0366d6b45a36ebb642a10ae749a5bb97115c80ff975006f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.1/bdi-x86_64-apple-darwin"
      sha256 "f1c470f53010906d388b8a04d40fb51adf733668312bb9072691b32fb15a916a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.1/bdi-aarch64-unknown-linux-musl"
      sha256 "af8b70aff0637d44713dcb80db7aea50a19f3145a3b357fcb7e50f21b624b012"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.40.1/bdi-x86_64-unknown-linux-musl"
      sha256 "ff3454339747b0a722334ef54946f9daf02c6f8e2f6524816537b74e27c1a5aa"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
