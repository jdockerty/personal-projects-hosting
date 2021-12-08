terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_kubernetes_cluster" "projects" {
  name   = var.cluster_name
  region = var.region

  version = var.do_kubernetes_version

  # 3 nodes at 2 CPU/2GB RAM should work out at $45/month
  node_pool {
    name       = var.node_pool_name
    size       = var.node_size
    node_count = var.node_count

  }
}
