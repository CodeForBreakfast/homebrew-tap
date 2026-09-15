class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.11.0/bdi-aarch64-apple-darwin"
      sha256 "b6e85618645e3060b0a5bec363b305ab41575663ab1a99b7f0a72570619c9738"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.11.0/bdi-x86_64-apple-darwin"
      sha256 "4e5a5ef761a675a59958e8a3b03fa2670013bd861532b9c3ffb1c4c0d64046bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.11.0/bdi-aarch64-unknown-linux-musl"
      sha256 "6c04982b24ec95b6fa9526edbe5d1eaa214f58b8d9163045b991b54edbaffc12"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.11.0/bdi-x86_64-unknown-linux-musl"
      sha256 "333e9d1ea9c20980ff38a799db582f05247d836912765908fae83a108d5ab212"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
