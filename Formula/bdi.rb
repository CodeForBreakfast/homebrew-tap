class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.19.0/bdi-aarch64-apple-darwin"
      sha256 "9a32a9b81dade92e9d84096cc73c4f24e7e02d445474aa58418c2dbe2ad6aabf"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.19.0/bdi-x86_64-apple-darwin"
      sha256 "f886a102504f6c78dd83578464fef648c7a49a6f243539ffe5251147f863684b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.19.0/bdi-aarch64-unknown-linux-musl"
      sha256 "271b16bf6677740d35c94a25110406899669192938380af1be73a6e6bc4b916f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.19.0/bdi-x86_64-unknown-linux-musl"
      sha256 "8a8a136c3a3d1e15e5b1161137aed7575ad4e75788258e6e029279c036826a78"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
