# nhomble/homebrew-tap

Personal [Homebrew](https://brew.sh) tap for tools I maintain.

## Install

```sh
brew tap nhomble/tap
```

## Available formulas

| Formula        | Description                                                          | Source                                              |
|----------------|----------------------------------------------------------------------|-----------------------------------------------------|
| `skiff`        | Structured kubernetes diff                                           | https://github.com/nhomble/skiff                    |
| `fmq`          | jq for markdown frontmatter                                          | https://github.com/nhomble/fmq                      |
| `git-timeline` | Git plugin to print a timeline of changes across a repo + submodules | https://github.com/nhomble/git-timeline             |
| `zing`         | Faithful ping rewrite in Zig, with opt-in UX niceties                | https://github.com/nhomble/zing                     |

### Stable (binary) installs

```sh
brew install nhomble/tap/skiff
brew install nhomble/tap/fmq
brew install nhomble/tap/zing
```

### HEAD (build from source) installs

`git-timeline` has no tagged release, so it builds from `main`:

```sh
brew install --HEAD nhomble/tap/git-timeline
```

## Repo naming

The GitHub repo **must** be named `homebrew-tap` for `brew tap nhomble/tap` to
resolve. This directory may be named differently locally — that's fine, git
doesn't care about the local folder name.

## Maintenance

Each formula lives in `Formula/<name>.rb`. To bump a release:

1. Push a new tag in the source repo, publish a GitHub Release with assets.
2. Update `version`, `url`, and `sha256` in the corresponding formula here.
3. Commit and push.

To compute a new SHA256:

```sh
curl -sL https://github.com/nhomble/<repo>/releases/download/vX.Y.Z/<asset> \
  | shasum -a 256
```

## Testing locally

```sh
brew install --build-from-source ./Formula/skiff.rb
brew audit --strict --online ./Formula/skiff.rb
brew test skiff
```
