output "name" {
  description = "The name of a Helm release"
  value       = var.name
}

output "git_url" {
  description = "The URL of a Git repository with a Helm chart"
  value       = var.git_url
}

output "chart_dir" {
  description = "The directory with a Helm chart inside a repository"
  value       = var.chart_dir
}

output "namespace" {
  description = "The namespace with a Helm release"
  value       = helm_release.app.metadata.0.namespace
}

output "revision" {
  description = "The revision of a Helm release"
  value       = helm_release.app.metadata.0.revision
}

output "app_version" {
  description = "The version of a Helm chart"
  value       = helm_release.app.metadata.0.app_version
}
