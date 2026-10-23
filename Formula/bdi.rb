class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.36.0/bdi-aarch64-apple-darwin"
      sha256 "ca0c249a2934cc6d309def565099b55fc9305a4b67a22d426f9e41bbbd622fdd"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.36.0/bdi-x86_64-apple-darwin"
      sha256 "c55d384fb6190c61b2f4f19fa6ea3f4cf932822125128db00ade7d1f3e2cf6b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.36.0/bdi-aarch64-unknown-linux-musl"
      sha256 "15ad2d6c35b896a622069189f26e30fea823de946b6aa993385e962493c216b0"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.36.0/bdi-x86_64-unknown-linux-musl"
      sha256 "71bcedc73fdb0dac8905f42f0f04222cfdd548086269c27d22e22ab613e76b5e"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
