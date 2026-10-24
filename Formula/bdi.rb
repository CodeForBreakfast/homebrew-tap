class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.37.0/bdi-aarch64-apple-darwin"
      sha256 "d0bf79e86785ea51a2d64a58c8cf0f31e97b464f6a66bc1337159ad1a03fc8e2"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.37.0/bdi-x86_64-apple-darwin"
      sha256 "e86d123becd6c01d769e9b5e280b651894f3a606794a489f220d694563fd1c91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.37.0/bdi-aarch64-unknown-linux-musl"
      sha256 "16a608644198017792424b68212b0325ce76fa13d36022d6898368f95614b9d9"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.37.0/bdi-x86_64-unknown-linux-musl"
      sha256 "e9392e481ed4c5faa71e587c59e71b38514a1041dd853ae128433f930e00c14b"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
