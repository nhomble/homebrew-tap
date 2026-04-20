class Skiff < Formula
  desc "Structured kubernetes diff"
  homepage "https://github.com/nhomble/skiff"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhomble/skiff/releases/download/v0.1.0/skiff-darwin-arm64"
      sha256 "36004efe65cc777bda6d71874e478c6baf02808a101833271929a31a2f6c3fda"
    end
    on_intel do
      url "https://github.com/nhomble/skiff/releases/download/v0.1.0/skiff-darwin-amd64"
      sha256 "848ff33e795129424a850828e02aa39594c0601f2a3d0b6969b978e1742336d2"
    end
  end

  def install
    # brew stages the downloaded file with its URL-derived name (e.g. skiff-darwin-arm64)
    binary = Dir["skiff-*"].first
    bin.install binary => "skiff"
  end

  test do
    # skiff prints usage and exits 1 when called without args
    assert_match "before.yaml", shell_output("#{bin}/skiff --help 2>&1", 1)
  end
end
