#!/bin/bash

set -e

usage()
{
    echo "Usage:"
    echo ""
    echo $0 [dir]
    exit 1
}


if [ -z "$1" ]
then
    usage
fi 

for kustomization in $(find $1 -name "kustomization.*l")
do
    (
      cd $(dirname $kustomization)
      kustomize build
    )
done

