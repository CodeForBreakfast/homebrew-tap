class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.14.0/bdi-aarch64-apple-darwin"
      sha256 "5ded5745caad77bdece3df34f754f4c282d0858145b800e522182d196454540d"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.14.0/bdi-x86_64-apple-darwin"
      sha256 "918eadead7edd67e159a944d855c4c9e415f4de3d5b1767250d0d18cfdca7aae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.14.0/bdi-aarch64-unknown-linux-musl"
      sha256 "ced006421dac80fd208b971306b629dec3c602fdc3080b56c1d22ff89832a798"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.14.0/bdi-x86_64-unknown-linux-musl"
      sha256 "c0b6adb9a87d4906b2576d05177ced6a3c5472de46380b38f2eb47c20e060e5c"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
