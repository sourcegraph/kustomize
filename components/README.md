A kustomize component is essentially a smaller unit of a normal kustomization, and designed to be reusable.

From the [kubernetes docs](https://sourcegraph.com/github.com/kubernetes/enhancements@master/-/blob/keps/sig-cli/1802-kustomize-components/README.md#proposal):
A kustomization that is marked as a Component has basically the same capabilities as a normal kustomization. The main distinction is that they are evaluated after the resources of the parent kustomization (overlay or component) have been accumulated, and on top of them. This means that:
- A component with transformers can transform the resources that an overlay has previously specified in the resources field. Components with patches do not have to include the target resource in their resources field.
- Multiple components can extend and transform the same set of resources sequentially. This is in contrast to overlays, which cannot alter the same base resources, because they clone and extend them in parallel.
