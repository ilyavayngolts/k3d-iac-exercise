output "name" {
  description = "The name of a k3d cluster"
  value       = var.name
}

output "servers" {
  description = "The amount of a k3d cluster servers"
  value       = var.servers
}

output "agents" {
  description = "The amount of a k3d cluster agents"
  value       = var.agents
}

output "api_port" {
  description = "The port for a k3d cluster API server"
  value       = var.api_port
}

output "host_lb_port" {
  description = "The port for a k3d cluster load balancer on a host machine"
  value       = var.host_lb_port
}

output "container_lb_port" {
  description = "The port for a k3d cluster load balancer container"
  value       = var.container_lb_port
}

output "image" {
  description = "The k3s image"
  value       = local.image
}
