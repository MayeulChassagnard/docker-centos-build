#!/bin/bash

#Version of GIT
GIT_VERSION=$1

if [ -f git-${GIT_VERSION}.tar.gz ]; then
    rm git-${GIT_VERSION}.tar.gz
fi
wget https://www.kernel.org/pub/software/scm/git/git-${GIT_VERSION}.tar.gz
