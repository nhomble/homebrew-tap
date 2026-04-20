class Fmq < Formula
  desc "Jq for markdown frontmatter"
  homepage "https://github.com/nhomble/fmq"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhomble/fmq/releases/download/v0.2.0/fmq-aarch64-apple-darwin.tar.gz"
      sha256 "860fed5f3724fcbd1c634f384b6b371c959adbd845154ac87848d5f17b9b82e1"
    end
    on_intel do
      url "https://github.com/nhomble/fmq/releases/download/v0.2.0/fmq-x86_64-apple-darwin.tar.gz"
      sha256 "451719d92d609ec1d13e14f8c11dd4d4f6faebeaa6e0b2a0a3248827b78e9a6f"
    end
  end

  def install
    bin.install "fmq"
  end

  test do
    assert_match "fmq", shell_output("#{bin}/fmq --help 2>&1")
  end
end
