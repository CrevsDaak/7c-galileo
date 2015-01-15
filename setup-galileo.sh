#!/bin/sh

# This meant to be run in the directory it was found.

c_p=${0%/*}
cd "$c_p" && cd ..

if [[ "$OSTYPE" =~ "darwin" ]]; then
  WEIDU_EXEC = "weidu_osx"
else
  WEIDU_EXEC = "weidu_linux"
fi

./"$WEIDU_EXEC" --log setup-7c-galileo.debug  7c-galileo/7c-galileo.tp2