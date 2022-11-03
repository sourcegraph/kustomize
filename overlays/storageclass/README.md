# storageclass

This is a convenient kustomization that adds the specified storageclass to all pvc's and statefulsets.

You will need to create a storageclass if it doesn't exist yet. See [these docs](https://docs.sourcegraph.com/admin/install/kubernetes/configure#configure-a-storage-class) for detailed instructions.

## How to use

1. cd into this directory [overlays/storageclass](./README.md)
2. [OPTIONAL] Update the `namespace` value
3. Update the variable `DEPLOY_SOURCEGRAPH_STORAGECLASS_NAME` inside the [.storageclass.env](.storageclass.env) file
4. To build, run `kustomize build . > .overlay_output.yaml`
5. Make sure the values in `.overlay_output.yaml` are updated and correct
6. To apply, run `kustomize build . | kubectl apply -k -`