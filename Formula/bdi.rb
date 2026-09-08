class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.3.0/bdi-aarch64-apple-darwin"
      sha256 "a40a8ce95c93fba55c6abdf753cc66307ce4d6efbc0d2b0d2e86d7c77a946613"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.3.0/bdi-x86_64-apple-darwin"
      sha256 "2714f04074653b7140597892f90824c649d697a0d668a4a34577f11563ef29b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.3.0/bdi-aarch64-unknown-linux-musl"
      sha256 "57b3e84ba95f6f1889a95f7c0436157ef50454908f38efee4ab90ffa169c08ff"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.3.0/bdi-x86_64-unknown-linux-musl"
      sha256 "b8eb028101a22b6e4a0a62a1252057e6c22e590ff0c7381dc463dde4128d15c3"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
