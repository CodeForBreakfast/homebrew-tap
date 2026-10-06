class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.23.0/bdi-aarch64-apple-darwin"
      sha256 "e4bd3c1ef1233671ac543eb7de982f9fb0b745270afb223f057a65af2e1af590"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.23.0/bdi-x86_64-apple-darwin"
      sha256 "70b12e248c7602298548c67734e4723f8f87713b51b254c5a62015182a3c0930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.23.0/bdi-aarch64-unknown-linux-musl"
      sha256 "28a09aeb99ebb82143258f6411afb89d9733c170891ad521daaf77de251a20f9"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.23.0/bdi-x86_64-unknown-linux-musl"
      sha256 "69d1e9fe1b6a4c722239c922655d3683b98239fa63750e2a5ff38312e461dd36"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
