#!/usr/bin/env bash
set -e

echo
echo "Compiling sqlparser ..."
( cd sqlparser && ./build_all64.sh )

echo
echo "Compiling sqlines ..."
( cd sqlines && ./build_all64.sh )

echo
echo "Running sqlines ..."
( cd sqlines && ./sqlines $@ )

