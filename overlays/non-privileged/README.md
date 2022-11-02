This overlay is for creating fresh Sourcegraph installations that want to run containers as non-root users in clusters with security restrictions.
It avoids creating Roles and does all the rolebinding in a namespace. It configures Prometheus to work in the namespace and not require ClusterRole wide privileges when doing service discovery for scraping targets. It also disables cAdvisor.

> Note: To create a fresh installation use `non-root-privileged-cluster` first and then use this overlay.
