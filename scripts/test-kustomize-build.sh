#!/bin/bash

set -e

for kustomization in $(find $1 -name "kustomization.*l")
do
    (
      cd $(dirname $kustomization)
      kustomize build
    )
done

