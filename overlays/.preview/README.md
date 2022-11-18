# Preview Overlay

This directory is where the generated manifests from applying the overlays will be output to when you run:

```sh
# This will product a seperated manifest file for each resources
$ kustomize build overlays/$OVERLAY > overlays/.preview/

# This groups all the new manifests into a single file named output.yaml
$ kustomize build overlays/$OVERLAY > overlays/.preview/output.yaml
```
