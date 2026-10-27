class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.0/bdi-aarch64-apple-darwin"
      sha256 "4ce2d00fb3a07d135f76c73691a6b65be47d40f1a135e79ac9754839490ef0dc"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.0/bdi-x86_64-apple-darwin"
      sha256 "7bea61a3b0181437eaa5250067365f9b3230d725cc1a7be1ff845a387474b48e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.0/bdi-aarch64-unknown-linux-musl"
      sha256 "637ff1fd0c9a34382460b419d3ae27fa4dc3d49f69e36ec6843ee70b8041aa60"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.38.0/bdi-x86_64-unknown-linux-musl"
      sha256 "bc82b6872ddc86242f4c60ff94f6ba948fcf26d97edefa8f4a8c1f4de520528d"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
