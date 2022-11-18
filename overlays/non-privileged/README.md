This overlay is for creating fresh Sourcegraph installations that want to run containers as non-root users in clusters with security restrictions.
It avoids creating Roles and does all the rolebinding in a namespace. It configures Prometheus to work in the namespace and not require ClusterRole wide privileges when doing service discovery for scraping targets. 

It also adds the `delete-cadvisor component` to disable cAdvisor as **cAdvisor does not work without privileged role**.

It is expected to receive `no-data` on your grafana system-metrics dashboard when cAdvisor is disabled.

> Note: To create a fresh installation use `non-privileged-create-cluster` first and then use this overlay.
