output "k3d_cluster_name" {
  description = "The name of a k3d cluster"
  value       = module.k3d_cluster.name
}

output "k3d_cluster_servers" {
  description = "The amount of a k3d cluster servers"
  value       = module.k3d_cluster.servers
}

output "k3d_cluster_agents" {
  description = "The amount of a k3d cluster agents"
  value       = module.k3d_cluster.agents
}

output "k3d_cluster_api_port" {
  description = "The port for a k3d cluster API server"
  value       = module.k3d_cluster.api_port
}

output "k3d_cluster_host_lb_port" {
  description = "The port for a k3d cluster load balancer on a host machine"
  value       = module.k3d_cluster.host_lb_port
}

output "k3d_cluster_container_lb_port" {
  description = "The port for a k3d cluster load balancer container"
  value       = module.k3d_cluster.container_lb_port
}

output "k3d_cluster_image" {
  description = "The k3s image"
  value       = module.k3d_cluster.image
}

output "helm_release_name" {
  description = "The name of a Helm release"
  value       = module.helm_release.name
}

output "helm_release_git_url" {
  description = "The URL of a Git repository with a Helm chart"
  value       = module.helm_release.git_url
}

output "helm_release_chart_dir" {
  description = "The directory with a Helm chart inside a repository"
  value       = module.helm_release.chart_dir
}

output "helm_release_namespace" {
  description = "The namespace with a Helm release"
  value       = module.helm_release.namespace
}

output "helm_release_revision" {
  description = "The revision of a Helm release"
  value       = module.helm_release.revision
}

output "helm_release_app_version" {
  description = "The version of a Helm chart"
  value       = module.helm_release.app_version
}
