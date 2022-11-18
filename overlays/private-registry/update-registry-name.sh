#!/usr/bin/env bash

export DEPLOY_SOURCEGRAPH_PRIVATE_REGISTRY="UPDATE_ME"
envsubst <overlays/private-registry/patches/kustomization.yaml >overlays/private-registry/kustomization.yaml
kustomize build overlays/private-registry >overlays/.preview/output.yaml
