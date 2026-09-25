class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.16.0/bdi-aarch64-apple-darwin"
      sha256 "913696ac97797a85d6a309994fa05a17c5901fd3796d8ec7fc0bba3e5a34e0df"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.16.0/bdi-x86_64-apple-darwin"
      sha256 "c9add1aba548c381002b582a8bc856362d7e8b73afe0e63a49b9d47a4e56765c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.16.0/bdi-aarch64-unknown-linux-musl"
      sha256 "59bddebafcb610bec27737f110efc02c8da6dcfaa83fcb2639e945b14828c648"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.16.0/bdi-x86_64-unknown-linux-musl"
      sha256 "ebf30313a62074fd89b8b7f9326dfb66a3d937de0d555090e324e40b835b5bf0"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
