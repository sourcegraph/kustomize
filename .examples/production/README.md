# Production Overlay Example

This is an example of how you can mix and match different components to build an overlay that is tailored to your needs.

## How to use

1. cd into this directory [overlays/production](./README.md)
2. [OPTIONAL] Update the `namespace` value
3. Update the variable `DEPLOY_SOURCEGRAPH_STORAGECLASS_NAME` inside the [.sourcegraph_config.env](.sourcegraph_config.env) file
4. To build, run `kustomize build . -o ../.preview/`
5. Make sure the manifests are written into the [.examples/.preview/](../.preview/) directory correctly
6. To deploy, run `kustomize build . | kubectl apply -f -`

## Example

To see the output files from this overlay, run the following command from the root of this repository:

```bash
kustomize build . -o .examples/.preview/production
```
