module "k3d_cluster" {
  source = "./modules/k3d-cluster"

  name              = var.cluster_name
  servers           = var.servers
  agents            = var.agents
  api_port          = var.api_port
  host_lb_port      = var.host_lb_port
  container_lb_port = var.container_lb_port
  k3s_version       = var.k3s_version
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "helm_release" {
  source = "./modules/helm-release"

  name      = var.app_name
  git_url   = var.git_url
  chart_dir = var.chart_dir

  depends_on = [
    module.k3d_cluster
  ]
}
