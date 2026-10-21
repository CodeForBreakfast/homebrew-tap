class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.1/bdi-aarch64-apple-darwin"
      sha256 "b12b8dba5d38991239c8a71eb03497dbca43f4a9014141b68fdda7c1fb59512e"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.1/bdi-x86_64-apple-darwin"
      sha256 "373006d85784ad02de0f365c994794d159feb82ef89a3dc35357bbfcad525daf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.1/bdi-aarch64-unknown-linux-musl"
      sha256 "131e6cb1a2f21701da5e4cc75f3c06304be6da506f1b23d46483f583ece4ce34"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.1/bdi-x86_64-unknown-linux-musl"
      sha256 "be16b9b26682cdbdf0f629720144af63a40f925075f0381ea0acbb6e875db2cc"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
