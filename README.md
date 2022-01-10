# Personal Infrastructure

Small hosting repository for my personal projects infrastructure, currently evaluating a DigitalOcean Kubernetes cluster.

## Kubectl setup

Once the `terraform apply` runs successfully, the `cluster_id` output can be used to retrieve the kube config file using

    terraform output -raw cluster_id | xargs doctl kubernetes cluster kubeconfig save

## Helm

If you run

    helm install cluster-apps --create-namespace --namespace argocd  helm/

This will create a number of resources, namely:

* ArgoCD - this is the main component that manages the rest of the applications
* Cert Manager
* Bitnami Sealed Secrets via ArgoCD