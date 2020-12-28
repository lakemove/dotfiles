#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

case $1 in
  -f)
    rsync --exclude-from=.rsync-excludes           -i -c -a . ~
    ;;
  *)
    rsync --exclude-from=.rsync-excludes --dry-run -i -c -a . ~
    echo "add -f to real run"
    ;;
esac

