#!/bin/zsh
set -euo pipefail

file="${1:?missing file path}"
row="${2:-1}"
worktree="${3:?missing worktree root}"

repo_root="$(git -C "$worktree" rev-parse --show-toplevel)"
remote="$(git -C "$repo_root" config --get remote.origin.url)"

case "$remote" in
  git@github.com:*) slug="${remote#git@github.com:}" ;;
  ssh://git@github.com/*) slug="${remote#ssh://git@github.com/}" ;;
  https://github.com/*) slug="${remote#https://github.com/}" ;;
  http://github.com/*) slug="${remote#http://github.com/}" ;;
  *)
    echo "remote.origin.url is not a GitHub URL: $remote" >&2
    exit 1
    ;;
esac

slug="${slug%.git}"
ref="$(git -C "$repo_root" symbolic-ref --quiet --short HEAD || git -C "$repo_root" rev-parse HEAD)"
rel="$(git -C "$repo_root" ls-files --full-name -- "$file" 2>/dev/null | head -n 1 || true)"

if [ -z "$rel" ]; then
  rel="$(
    ruby -rpathname -e '
      file = Pathname.new(ARGV[0]).realpath
      root = Pathname.new(ARGV[1]).realpath
      abort "#{file} is not under #{root}" unless file.to_s.start_with?(root.to_s + "/")
      puts file.relative_path_from(root)
    ' "$file" "$repo_root"
  )"
fi

url="https://github.com/$slug/blob/$ref/$rel#L$row"
echo "$url"
open "$url"
