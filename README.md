# Personal Infrastructure

Small hosting repository for my personal projects infrastructure, currently evaluating a DigitalOcean Kubernetes cluster.

## Kubectl setup

Once the `terraform apply` runs successfully, the `cluster_id` output can be used to retrieve the kube config file using

    doctl kubernetes cluster kubeconfig save <cluster_id>