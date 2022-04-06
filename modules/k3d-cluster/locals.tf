locals {
  # NOTE: This variable is required for graceful destroying the cluster.
  # Destroy-time provisioners and their connection configurations may only reference attributes of the related resource,
  # via 'self', 'count.index', or 'each.key'.
  # So, we have to make a collection from a string with the cluster name.
  name     = [var.name]
  api_port = "0.0.0.0:${var.api_port}"
  lb_port  = "${var.container_lb_port}:${var.host_lb_port}@loadbalancer"
  image    = "rancher/k3s:v${var.k3s_version}"
}
