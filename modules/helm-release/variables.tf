variable "name" {
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
