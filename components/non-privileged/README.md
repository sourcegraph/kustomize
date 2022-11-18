This kustomization is for creating fresh Sourcegraph installations that want to run containers as non-root users in clusters with security restrictions.
It avoids creating Roles and does all the rolebinding in a namespace. It configures Prometheus to work in the namespace and not require ClusterRole wide privileges when doing service discovery for scraping targets.

Use this component with the delete-cadvisor component to disable cAdvisor.


> Note: To create a fresh installation use `non-privileged-create-cluster` first and then use this overlay.
