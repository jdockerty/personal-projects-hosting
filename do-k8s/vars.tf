variable "do_kubernetes_version" {
  type        = string
  default     = "1.21.5-do.0"
  description = "Kubernetes version - Grab the latest version slug from `doctl kubernetes options versions`."
}

variable "cluster_name" {
  type        = string
  default     = "projects-cluster"
  description = "Name of the Kubernetes cluster."
}

variable "node_pool_name" {
  type        = string
  default     = "worker-pool"
  description = "Name of the node pool with initial cluster creation."
}

variable "node_count" {
  type        = number
  default     = 3
  description = "Number of worker nodes to have in the cluster."
}

variable "node_size" {
  type        = string
  default     = "s-2vcpu-2gb"
  description = "Size of the instance, dictates CPU/RAM."
}

variable "region" {
  type        = string
  default     = "lon1"
  description = "Region to place resources into, defaults to London."
}
