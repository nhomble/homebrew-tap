class Tack < Formula
  desc "SQLite-backed macOS menu bar HUD, driven by a CLI"
  homepage "https://github.com/nhomble/tack"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhomble/tack/releases/download/v0.1.0/tack-darwin-arm64"
      sha256 "6fc394538efc15e38a76e71302247a9b292812aa3bb2177320e3a313e2d2764b"
    end
  end

  def install
    binary = Dir["tack-*"].first
    bin.install binary => "tack"
  end

  test do
    assert_match "tack", shell_output("#{bin}/tack --help 2>&1")
  end
end
