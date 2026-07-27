class Zing < Formula
  desc "Faithful ping rewrite in Zig, with opt-in UX niceties"
  homepage "https://github.com/nhomble/zing"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhomble/zing/releases/download/v0.1.0/zing-darwin-arm64"
      sha256 "0d58a1b42f331b6a8f5a184d04d6df05dc1da484435d89b339c35fa2fdff3df1"
    end
    on_intel do
      url "https://github.com/nhomble/zing/releases/download/v0.1.0/zing-darwin-amd64"
      sha256 "9787f9ea6a89293d0c139d20b3a858a4e27a929932e2e73911d6914fbb62ea0d"
    end
  end

  def install
    binary = Dir["zing-*"].first
    bin.install binary => "zing"
  end

  test do
    assert_match "Usage: zing", shell_output("#{bin}/zing --help 2>&1")
  end
end
