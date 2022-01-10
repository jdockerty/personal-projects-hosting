output "cluster_id" {
  value       = digitalocean_kubernetes_cluster.projects.id
  description = "Kubernetes cluster ID"
}
