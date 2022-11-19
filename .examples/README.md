# Examples

This directory is an example of how you can use Kustomize to configure different deployments for different purpose.

## Overview

This directory contains 3 different overlays for 3 different environments (dev, staging, and production), where each environment is configured according to their purposes. For example, each environments uses different service type as indicated in the tablebelow:

| **Env**    | **ServiceTypes** |
| ---------- | ---------------- |
| Dev        | ClusterIP        |
| Staging    | NodePort         |
| Production | LoadBalancer     |

See the kustomization.yaml file for each overlay to learn more about how it works.
