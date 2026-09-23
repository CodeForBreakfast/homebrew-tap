class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.15.0/bdi-aarch64-apple-darwin"
      sha256 "bd341f4b6f746d29fcde4a2624edc9297b6a091ca957b43e9f5631745e3b6cb1"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.15.0/bdi-x86_64-apple-darwin"
      sha256 "df368cf6a4e758c633c0aed7ad08752675c24d3c8443a7eb29417e35f55436c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.15.0/bdi-aarch64-unknown-linux-musl"
      sha256 "a8a5c2a30d169b42ebae386092aa9ccc494e4eaa670eb7670a4bbda1547472c1"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.15.0/bdi-x86_64-unknown-linux-musl"
      sha256 "b740fabbb0cf6b93a500346fd32061b6a51e2d66ae8bc44030e28a5b7b6d0f3a"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
