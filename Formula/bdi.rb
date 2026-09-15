class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.2/bdi-aarch64-apple-darwin"
      sha256 "15b45ed0e072cef7535f252e847c3b5bea61942a5733abb231b2843770aa622e"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.2/bdi-x86_64-apple-darwin"
      sha256 "f02337d6b50295426f245c1f7de10ee58f0ee0ffeff74f0bbd2326c16f776598"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.2/bdi-aarch64-unknown-linux-musl"
      sha256 "88776ba6e9944e306d11a822afa6f28fa9d188be36eaec80e32d5f24b054147c"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.10.2/bdi-x86_64-unknown-linux-musl"
      sha256 "5739ebf52e2a370adc00fa1937988d5f0768e392dc74d0a9975f172ad7937de7"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
