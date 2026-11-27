class Bdi < Formula
  desc "Trees of work from beads trackers, with what each agent is doing on its bead"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.47.0/bdi-aarch64-apple-darwin"
      sha256 "f26b17daec12a65896f9298873584892873c2fc5c165674254c090e37702a81d"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.47.0/bdi-x86_64-apple-darwin"
      sha256 "42a0d423b4ed81facb16f13ddc323cfc7b8c11ab74d8f469efe63884b4bea34f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.47.0/bdi-aarch64-unknown-linux-musl"
      sha256 "41f11c743be88a0de379273267fe6fc5cbfee54b07b45a67ae710589bcab7e8f"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.47.0/bdi-x86_64-unknown-linux-musl"
      sha256 "bd0d4ee77c31035882dcdd078606240a0b5ff2cf1823da3248e110ef54823aa7"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
