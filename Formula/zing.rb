class Zing < Formula
  desc "Faithful ping rewrite in Zig, with opt-in UX niceties"
  homepage "https://github.com/nhomble/zing"
  version "0.1.0"
  license "MIT"

  # TODO after the first `git tag v0.1.0 && git push --tags` on nhomble/zing:
  # the release workflow uploads zing-darwin-arm64/.sha256 and
  # zing-darwin-amd64/.sha256 as release assets — copy the sha256 values from
  # there (or recompute per the README) and drop these placeholders.
  on_macos do
    on_arm do
      url "https://github.com/nhomble/zing/releases/download/v0.1.0/zing-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/nhomble/zing/releases/download/v0.1.0/zing-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000"
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
