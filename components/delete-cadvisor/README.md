# delete cadvisor

A component to delete all cadvisor-related resources.

It is ususally used with the non-privileged and non-privileged-create-cluster components to disable cAdvisor as **cAdvisor does not work without privileged role**.

It is expected to receive `no-data` on your grafana system-metrics dashboard when cAdvisor is disabled.