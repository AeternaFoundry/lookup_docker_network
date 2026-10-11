output "network_lookup_id" {
  description = "Map of id values across all network_lookup, keyed the same as var.network_lookup except keys with no id are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_lookup_containers" {
  description = "Map of containers values across all network_lookup, keyed the same as var.network_lookup except keys with no containers are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.containers if v.containers != null && length(v.containers) > 0 }
}
output "network_lookup_driver" {
  description = "Map of driver values across all network_lookup, keyed the same as var.network_lookup except keys with no driver are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.driver if v.driver != null && length(v.driver) > 0 }
}
output "network_lookup_internal" {
  description = "Map of internal values across all network_lookup, keyed the same as var.network_lookup except keys with no internal are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.internal if v.internal != null }
}
output "network_lookup_ipam_config" {
  description = "Map of ipam_config values across all network_lookup, keyed the same as var.network_lookup except keys with no ipam_config are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.ipam_config if v.ipam_config != null && length(v.ipam_config) > 0 }
}
output "network_lookup_name" {
  description = "Map of name values across all network_lookup, keyed the same as var.network_lookup except keys with no name are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_lookup_options" {
  description = "Map of options values across all network_lookup, keyed the same as var.network_lookup except keys with no options are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.options if v.options != null && length(v.options) > 0 }
}
output "network_lookup_scope" {
  description = "Map of scope values across all network_lookup, keyed the same as var.network_lookup except keys with no scope are omitted"
  value       = { for k, v in data.docker_network.network_lookup : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

