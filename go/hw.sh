#!/usr/bin/env bash

cd `dirname $0`

OS=`uname -s`

if [ "$OS" == "Darwin" ]; then
  echo -e "\n========\nsw_vers\n========\n"
  sw_vers
elif [ "$OS" == "Linux" ]; then
  echo -e "\nuname -a\n"
  uname -a
  echo -e "\ncat /etc/os-release\n"
  cat /etc/os-release
fi

echo -e "\n==================\ntime go run hw.go\n==================\n"
time go run hw.go

echo
