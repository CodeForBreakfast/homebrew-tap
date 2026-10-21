class Bdi < Formula
  desc "Tree of work in flight: bead graphs annotated with the live agents working them"
  homepage "https://github.com/CodeForBreakfast/beady-eye"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.0/bdi-aarch64-apple-darwin"
      sha256 "7f6976adf5a8e9c03ee5645c24506b83098ff4831d6471b8c4985ee942cd44eb"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.0/bdi-x86_64-apple-darwin"
      sha256 "77f9c142920cbbc55221d7fbb8ef6ea3988d576d260e971b3b77cc931282c52e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.0/bdi-aarch64-unknown-linux-musl"
      sha256 "6936a31ea87bde7fa2cd0f8c4bb40e2fb763337a6cc3e5e5b1c2e70a18c84561"
    end

    on_intel do
      url "https://github.com/CodeForBreakfast/beady-eye/releases/download/v0.35.0/bdi-x86_64-unknown-linux-musl"
      sha256 "e931b315289953907fe58745a392e3c869b2663dfb0284380d11d08762dee206"
    end
  end

  def install
    bin.install Dir["bdi-*"].first => "bdi"
  end

  test do
    assert_match "bdi #{version}", shell_output("#{bin}/bdi --version")
  end
end
