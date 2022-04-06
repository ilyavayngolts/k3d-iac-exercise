variable "cluster_name" {
  description = "The name of a k3d cluster"
  type        = string
}

variable "servers" {
  description = "The amount of a k3d cluster servers"
  type        = number
  default     = 1
}

variable "agents" {
  description = "The amount of a k3d cluster agents"
  type        = number
  default     = 0
}

variable "api_port" {
  description = "The port of a k3d cluster API server"
  type        = number
  default     = 6500
}

variable "host_lb_port" {
  description = "The port of a k3d cluster load balancer on a host machine"
  type        = number
  default     = 8080
}

variable "container_lb_port" {
  description = "The port of a k3d cluster load balancer container"
  type        = number
  default     = 80
}

variable "k3s_version" {
  description = "The version of k3s"
  type        = string
  default     = "1.22.7-k3s1"
}

variable "app_name" {
  description = "The name of a Helm release"
  type        = string
}

variable "git_url" {
  description = "The URL of a Git repository with a Helm chart"
  type        = string
}

variable "chart_dir" {
  description = "The directory with a Helm chart inside a repository"
  type        = string
  default     = ""
}
