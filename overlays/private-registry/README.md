# Private Registry Overlay

You can update image names easily using the [images transformer](https://kubectl.docs.kubernetes.io/references/kustomize/kustomization/images/).

## How to use

To update the registry name only, you can replace the `DEPLOY_SOURCEGRAPH_PRIVATE_REGISTRY` environment variables inside the kustomization.yaml file manually, or update the environment variable once inside the update-registry-name.sh before running it.