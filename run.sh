#!/bin/sh
docker run --rm -ti --security-opt seccomp=unconfined -v ~/:/home wch1/r-debug
