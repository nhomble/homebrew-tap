class GitTimeline < Formula
  desc "Git plugin to print a timeline of changes across a repo and its submodules"
  homepage "https://github.com/nhomble/git-timeline"
  head "https://github.com/nhomble/git-timeline.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./src"
  end

  test do
    # sanity: binary runs inside a fresh git repo
    system "git", "init", "-q"
    system "git", "config", "user.email", "test@example.com"
    system "git", "config", "user.name", "test"
    (testpath/"README").write "hi"
    system "git", "add", "."
    system "git", "commit", "-q", "-m", "init"
    assert_predicate bin/"git-timeline", :executable?
  end
end
