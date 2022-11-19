# Production Overlay Example

This is an example of how you can add different components to build an overlay that suits your needs.

## How to use

1. cd into this directory [overlays/production](./README.md)
2. [OPTIONAL] Update the `namespace` value
3. Update the variable `DEPLOY_SOURCEGRAPH_STORAGECLASS_NAME` inside the [.sourcegraph_config.env](.sourcegraph_config.env) file
4. To build, run `kustomize build . > overlays/.preview/output.yaml`
5. Make sure the values in `overlays/.preview/output.yaml` are updated and correct
6. To apply, run `kustomize build . | kubectl apply -k -`

## Example

To see the output files from this overlay, run the following command from the root of this repository:

```bash
kustomize build overlays/production > overlays/.preview/output.yaml
```
