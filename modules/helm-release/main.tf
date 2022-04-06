resource "null_resource" "chart" {
  triggers = {
    name      = var.name
    git_url   = var.git_url
    repo_dir  = local.repo_dir
    chart_dir = var.chart_dir
  }

  provisioner "local-exec" {
    command = "rm -rf ${local.repo_dir}"
  }

  provisioner "local-exec" {
    command = "git clone ${var.git_url} ${local.repo_dir}"
  }
}

resource "helm_release" "app" {
  name  = var.name
  chart = local.chart_dir

  depends_on = [
    null_resource.chart
  ]
}
