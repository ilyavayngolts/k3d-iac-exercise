resource "null_resource" "cluster" {
  triggers = {
    name     = var.name
    agents   = var.agents
    servers  = var.servers
    api_port = local.api_port
    lb_port  = local.lb_port
    image    = local.image
  }

  provisioner "local-exec" {
    command = "k3d cluster delete ${var.name}"
  }

  provisioner "local-exec" {
    command = "k3d cluster create ${var.name} --agents ${var.agents} --servers ${var.servers} --api-port ${local.api_port} --port ${local.lb_port} --image ${local.image}"
  }
}

resource "null_resource" "destroy" {
  # NOTE: This is required for graceful destroying the cluster.
  # Destroy-time provisioners and their connection configurations may only reference attributes of the related resource,
  # via 'self', 'count.index', or 'each.key'.
  # So, we have to iterate through the collection with the cluster name.
  for_each = toset(local.name)

  provisioner "local-exec" {
    command = "k3d cluster delete ${each.key}"
    when    = destroy
  }
}
