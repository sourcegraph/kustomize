# Sourcegraph Kustomize

This repository contains a set of Kustomize components and overlays that are designed to work with the [Sourcegraph Kubernetes deployment repository](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph), and to replace the [older version of the overlays](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph/-/tree/overlays). 

The new set of Kustomize components and overlays provide more flexibility in creating an overlay that suits your deployments and eliminates the need to clone the deployment repository.

IMPORTANT: Only works with Sourcegraph v4.2.0+

## Overlays

An overlay specifies customizations for a base directory of Kubernetes manifests, in this case the [base/](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph@master/-/tree/base) directory in the [deploy-sourcegraph repository](https://sourcegraph.com/github.com/sourcegraph/deploy-sourcegraph@master).

Each overlay is created with different kustomize components that are located inside the components directory.

## Components

A kustomize component is essentially a smaller unit of a normal kustomization, and designed to be reusable. _They are evaluated after the resources of the parent kustomization (overlay or component) have been accumulated, and on top of them. ([source](https://sourcegraph.com/github.com/kubernetes/enhancements@master/-/blob/keps/sig-cli/1802-kustomize-components/README.md#proposal))_

## How to use

Making changes directly in the existing components are not recommended. 

All changes should be made within a kustomization.yaml file inside the overlays folder.

For example, if you would like to use the storageclass overlay, you will need to update the storage class value inside [.storageclass.env file](overlays/storageclass/.storageclass.env) instead of the files in the storageclass component.

### Build overlay

Run the following command in the root of this repository. Replace `$OVERLAY` with the name of the overlay.

```bash
# example: kubectl apply -k overlays/minikube > .overlay_output.yaml
kustomize build overlays/$OVERLAY > .overlay_output.yaml
```

### Apply overlay

Run the following command in the root of this repository. Replace `$OVERLAY` with the name of the overlay.

```bash
# example: kubectl apply -k overlays/minikube
kubectl apply -k overlays/$OVERLAY
# or
# example: kustomize build overlays/minikube | kubectl apply -f -
kustomize build overlays/$OVERLAY | kubectl apply -f -
```
