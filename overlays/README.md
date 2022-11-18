# Overlays

An overlay specifies customizations for a base directory of Kubernetes manifests, in this case the [base/](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph@master/-/tree/base) directory in the [deploy-sourcegraph repository](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph@master).

Each overlay is created with different kustomize components that are located inside the components directory.

## Create an overlay

### Remote overlay

You can create an overlay to deploy Sourcegraph without cloning the reference repository by using remote build.

### Example

Here is an example of what a typical `kustomization.yaml` file that is use to build a Kustomize overlay looks like:

```yaml
# kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
namespace: ns-sourcegraph-example
resources:
  - https://github.com/sourcegraph/deploy-sourcegraph/base?ref=kustomize.example
components:
  - https://github.com/sourcegraph/kustomize/components/delete-cadvisor
  - https://github.com/sourcegraph/kustomize/components/non-privileged
  - https://github.com/sourcegraph/kustomize/components/non-privileged-create-cluster
```

This example overlay that has the following features:

- use the manifests defined in the branch called `kustomize.example` located inside the `github.com:sourcegraph/deploy-sourcegraph` repository, and
- apply the `delete-cadvisor` component
- apply the `non-privileged` component
- apply the `non-privileged-create-cluster` component

## Build an overlay

This allows you to preview the output files of your overlay before applying them to your cluster.

Run the following command in the root of this repository. Replace `$OVERLAY` with the name of the overlay.

### Individual output file

To produce a seperated manifest file for each resources to the `overlays/.preview/` directory:

### Single output file

To groups all the manifests into a single file named `output.yaml` inside the `overlays/.preview/` directory:

When using kustomize:

```bash
# example: kustomize build overlays/minikube > overlays/.preview/output.yaml
$ kustomize build overlays/$OVERLAY > overlays/.preview/output.yaml
```

When using kubectl:

```bash
# example: kubectl apply -k overlays/minikube > overlays/.preview/output.yaml
$ kubectl apply -k overlays/$OVERLAY > overlays/.preview/output.yaml
```

## Apply an overlay

To apply the customizations configured with your overlay:

Run the following command in the root of this repository. Replace `$OVERLAY` with the name of the overlay.

When using kustomize:

```bash
# example: kustomize build overlays/minikube | kubectl apply -f -
kustomize build overlays/$OVERLAY | kubectl apply -f -
```

When using kubectl:

```bash
# example: kubectl apply -k overlays/minikube
kubectl apply -k overlays/$OVERLAY
```
