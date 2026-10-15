class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.28.0/bdi-aarch64-apple-darwin"
      sha256 "889de42fdc5ee44605ab92d91c6294fba26dd3f0f02918c75551f083e26d40cc"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.28.0/bdi-x86_64-apple-darwin"
      sha256 "b16dac969b474788d133f09de261aa47e00dfd07490d0b518cb1c805e4596851"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.28.0/bdi-aarch64-unknown-linux-musl"
      sha256 "d5dabe9dd475a4cc912d448fc9321083077af272497a1cf7c7a7a15cbbb2a61e"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.28.0/bdi-x86_64-unknown-linux-musl"
      sha256 "076481c739a96a770acebec7eaaeccee916a113e985b5dba944063c2c113775f"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
