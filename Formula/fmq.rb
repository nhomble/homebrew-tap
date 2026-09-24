class Fmq < Formula
  desc "Jq for markdown frontmatter"
  homepage "https://github.com/nhomble/fmq"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhomble/fmq/releases/download/v0.2.1/fmq-aarch64-apple-darwin.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
    on_intel do
      url "https://github.com/nhomble/fmq/releases/download/v0.2.1/fmq-x86_64-apple-darwin.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end

  def install
    bin.install "fmq"
  end

  test do
    assert_match "fmq", shell_output("#{bin}/fmq --help 2>&1")
  end
end
