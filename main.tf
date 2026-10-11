data "docker_network" "network_lookup" {
  for_each = var.network_lookup

  name = each.value.name
}

