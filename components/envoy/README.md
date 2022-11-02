# Kustomize Overlay - Envoy Filter

This component applies a new envoy filter to enable HTTP trailers for gitserver to resolve the following error message caused by enabling service mesh:

```
"git command [git rev-parse HEAD] failed (stderr: \"\"): strconv.Atoi: parsing \"\"
```
