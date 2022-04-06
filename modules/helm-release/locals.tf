locals {
  repo_dir  = "app"
  chart_dir = var.chart_dir != "" ? "./${local.repo_dir}/${var.chart_dir}" : "./${local.repo_dir}"
}
