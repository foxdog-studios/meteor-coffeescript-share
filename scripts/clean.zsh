#!/usr/bin/env zsh

setopt ERR_EXIT
setopt NO_UNSET

repo=$0:A:h:h

clean() {
  rm --force --recursive --verbose $@
}

clean $repo/example/.meteor/local

