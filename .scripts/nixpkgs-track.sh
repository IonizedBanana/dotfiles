#!/bin/bash

if [ $# -ne 0 ]; then
   echo $1 > commit
fi

commit=$(< ./commit)

nixpkgs-track $commit
