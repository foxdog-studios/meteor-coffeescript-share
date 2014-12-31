#!/usr/bin/env zsh

setopt ERR_EXIT
setopt NO_UNSET

src=${0:A:h:h}/fds:coffeescript-share

if [[ $# -eq 0 ]]; then
  args=( test-packages $src )
else
  args=( $@ )
fi

cd $src
exec meteor $args

