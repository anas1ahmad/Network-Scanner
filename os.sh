#!/bin/bash

os=${OSTYPE//[0-9.-]*/}

case "$os" in
  darwin)
    echo "I'm a Mac"
    ;;

  msys)
    echo "I'm Windows using git bash"
    ;;

  linux)
    echo "I'm Linux"
    ;;
  *)

  echo "Unknown Operating system $OSTYPE"
  exit 1
esac
