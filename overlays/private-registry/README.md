# Private Registry Overlay

You can update image names easily using the [images transformer](https://kubectl.docs.kubernetes.io/references/kustomize/kustomization/images/).

## How to use

There are two ways to update the registry name of the images:

### Option 1

Replace the `DEPLOY_SOURCEGRAPH_PRIVATE_REGISTRY` environment variables inside the kustomization.yaml file manually

### Option 2

1. Update the environment variable once, inside the [update-registry-name.sh](./update-registry-name.sh)
2. Run the script with `bash ./update-registry-name.sh` from the root of this directory
3. Confirm if the overlay is working correctly by checking the output file inside the `../.preview` directory
4. Once confirmed, you can start the deploying process by running `kustomize build . | kubectl apply -f -` from the root of this directory
