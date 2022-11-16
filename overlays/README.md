# Overlays

An overlay specifies customizations for a base directory of Kubernetes manifests, in this case the [base/](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph@master/-/tree/base) directory in the [deploy-sourcegraph repository](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph@master).

Each overlay is created with different kustomize components that are located inside the components directory.

## Remote overlay

You can create an overlay for deploying Sourcegraph without cloning the reference repository by using remote build.

### For example

To create an overlay that references the branch called `bee/kustomize` located inside the `github.com:sourcegraph/deploy-sourcegraph` repository, and applies the `non-privileged` and `non-privileged-create-cluster` components:

```yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
namespace: ns-sourcegraph-example
resources:
  - https://github.com/sourcegraph/deploy-sourcegraph/base?ref=bee/kustomize
components:
  - https://github.com/sourcegraph/kustomize/components/non-privileged
  - https://github.com/sourcegraph/kustomize/components/non-privileged-create-cluster
```

## Build overlay

Run the following command in the root of this repository. Replace `$OVERLAY` with the name of the overlay.

```bash
# example: kubectl apply -k overlays/minikube > .overlay_output.yaml
kustomize build overlays/$OVERLAY > .overlay_output.yaml
```

## Apply overlay

Run the following command in the root of this repository. Replace `$OVERLAY` with the name of the overlay.

```bash
# example: kubectl apply -k overlays/minikube
kubectl apply -k overlays/$OVERLAY
# or
# example: kustomize build overlays/minikube | kubectl apply -f -
kustomize build overlays/$OVERLAY | kubectl apply -f -
```
