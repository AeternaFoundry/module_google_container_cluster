output "container_clusters_id" {
  description = "Map of id values across all container_clusters, keyed the same as var.container_clusters except keys with no id are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_clusters_addons_config" {
  description = "Map of addons_config values across all container_clusters, keyed the same as var.container_clusters except keys with no addons_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.addons_config) if v.addons_config != null && length(v.addons_config) > 0 }
}
output "container_clusters_allow_net_admin" {
  description = "Map of allow_net_admin values across all container_clusters, keyed the same as var.container_clusters except keys with no allow_net_admin are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.allow_net_admin if v.allow_net_admin != null }
}
output "container_clusters_anonymous_authentication_config" {
  description = "Map of anonymous_authentication_config values across all container_clusters, keyed the same as var.container_clusters except keys with no anonymous_authentication_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.anonymous_authentication_config) if v.anonymous_authentication_config != null && length(v.anonymous_authentication_config) > 0 }
}
output "container_clusters_authenticator_groups_config" {
  description = "Map of authenticator_groups_config values across all container_clusters, keyed the same as var.container_clusters except keys with no authenticator_groups_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.authenticator_groups_config) if v.authenticator_groups_config != null && length(v.authenticator_groups_config) > 0 }
}
output "container_clusters_autopilot_cluster_policy_config" {
  description = "Map of autopilot_cluster_policy_config values across all container_clusters, keyed the same as var.container_clusters except keys with no autopilot_cluster_policy_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.autopilot_cluster_policy_config) if v.autopilot_cluster_policy_config != null && length(v.autopilot_cluster_policy_config) > 0 }
}
output "container_clusters_autopilot_privileged_admission" {
  description = "Map of autopilot_privileged_admission values across all container_clusters, keyed the same as var.container_clusters except keys with no autopilot_privileged_admission are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.autopilot_privileged_admission if v.autopilot_privileged_admission != null && length(v.autopilot_privileged_admission) > 0 }
}
output "container_clusters_binary_authorization" {
  description = "Map of binary_authorization values across all container_clusters, keyed the same as var.container_clusters except keys with no binary_authorization are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.binary_authorization) if v.binary_authorization != null && length(v.binary_authorization) > 0 }
}
output "container_clusters_cluster_autoscaling" {
  description = "Map of cluster_autoscaling values across all container_clusters, keyed the same as var.container_clusters except keys with no cluster_autoscaling are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.cluster_autoscaling) if v.cluster_autoscaling != null && length(v.cluster_autoscaling) > 0 }
}
output "container_clusters_cluster_ipv4_cidr" {
  description = "Map of cluster_ipv4_cidr values across all container_clusters, keyed the same as var.container_clusters except keys with no cluster_ipv4_cidr are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.cluster_ipv4_cidr if v.cluster_ipv4_cidr != null && length(v.cluster_ipv4_cidr) > 0 }
}
output "container_clusters_confidential_nodes" {
  description = "Map of confidential_nodes values across all container_clusters, keyed the same as var.container_clusters except keys with no confidential_nodes are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.confidential_nodes) if v.confidential_nodes != null && length(v.confidential_nodes) > 0 }
}
output "container_clusters_control_plane_endpoints_config" {
  description = "Map of control_plane_endpoints_config values across all container_clusters, keyed the same as var.container_clusters except keys with no control_plane_endpoints_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.control_plane_endpoints_config) if v.control_plane_endpoints_config != null && length(v.control_plane_endpoints_config) > 0 }
}
output "container_clusters_cost_management_config" {
  description = "Map of cost_management_config values across all container_clusters, keyed the same as var.container_clusters except keys with no cost_management_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.cost_management_config) if v.cost_management_config != null && length(v.cost_management_config) > 0 }
}
output "container_clusters_database_encryption" {
  description = "Map of database_encryption values across all container_clusters, keyed the same as var.container_clusters except keys with no database_encryption are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.database_encryption) if v.database_encryption != null && length(v.database_encryption) > 0 }
}
output "container_clusters_datapath_provider" {
  description = "Map of datapath_provider values across all container_clusters, keyed the same as var.container_clusters except keys with no datapath_provider are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.datapath_provider if v.datapath_provider != null && length(v.datapath_provider) > 0 }
}
output "container_clusters_dataplane_optimization_mode" {
  description = "Map of dataplane_optimization_mode values across all container_clusters, keyed the same as var.container_clusters except keys with no dataplane_optimization_mode are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.dataplane_optimization_mode if v.dataplane_optimization_mode != null && length(v.dataplane_optimization_mode) > 0 }
}
output "container_clusters_default_max_pods_per_node" {
  description = "Map of default_max_pods_per_node values across all container_clusters, keyed the same as var.container_clusters except keys with no default_max_pods_per_node are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.default_max_pods_per_node if v.default_max_pods_per_node != null }
}
output "container_clusters_default_snat_status" {
  description = "Map of default_snat_status values across all container_clusters, keyed the same as var.container_clusters except keys with no default_snat_status are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.default_snat_status) if v.default_snat_status != null && length(v.default_snat_status) > 0 }
}
output "container_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all container_clusters, keyed the same as var.container_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "container_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all container_clusters, keyed the same as var.container_clusters except keys with no deletion_protection are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "container_clusters_description" {
  description = "Map of description values across all container_clusters, keyed the same as var.container_clusters except keys with no description are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "container_clusters_desired_emulated_version" {
  description = "Map of desired_emulated_version values across all container_clusters, keyed the same as var.container_clusters except keys with no desired_emulated_version are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.desired_emulated_version if v.desired_emulated_version != null && length(v.desired_emulated_version) > 0 }
}
output "container_clusters_disable_l4_lb_firewall_reconciliation" {
  description = "Map of disable_l4_lb_firewall_reconciliation values across all container_clusters, keyed the same as var.container_clusters except keys with no disable_l4_lb_firewall_reconciliation are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.disable_l4_lb_firewall_reconciliation if v.disable_l4_lb_firewall_reconciliation != null }
}
output "container_clusters_dns_config" {
  description = "Map of dns_config values across all container_clusters, keyed the same as var.container_clusters except keys with no dns_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.dns_config) if v.dns_config != null && length(v.dns_config) > 0 }
}
output "container_clusters_effective_labels" {
  description = "Map of effective_labels values across all container_clusters, keyed the same as var.container_clusters except keys with no effective_labels are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "container_clusters_emulated_version" {
  description = "Map of emulated_version values across all container_clusters, keyed the same as var.container_clusters except keys with no emulated_version are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.emulated_version if v.emulated_version != null && length(v.emulated_version) > 0 }
}
output "container_clusters_enable_autopilot" {
  description = "Map of enable_autopilot values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_autopilot are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_autopilot if v.enable_autopilot != null }
}
output "container_clusters_enable_cilium_clusterwide_network_policy" {
  description = "Map of enable_cilium_clusterwide_network_policy values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_cilium_clusterwide_network_policy are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_cilium_clusterwide_network_policy if v.enable_cilium_clusterwide_network_policy != null }
}
output "container_clusters_enable_fqdn_network_policy" {
  description = "Map of enable_fqdn_network_policy values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_fqdn_network_policy are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_fqdn_network_policy if v.enable_fqdn_network_policy != null }
}
output "container_clusters_enable_intranode_visibility" {
  description = "Map of enable_intranode_visibility values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_intranode_visibility are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_intranode_visibility if v.enable_intranode_visibility != null }
}
output "container_clusters_enable_k8s_beta_apis" {
  description = "Map of enable_k8s_beta_apis values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_k8s_beta_apis are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.enable_k8s_beta_apis) if v.enable_k8s_beta_apis != null && length(v.enable_k8s_beta_apis) > 0 }
}
output "container_clusters_enable_kubernetes_alpha" {
  description = "Map of enable_kubernetes_alpha values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_kubernetes_alpha are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_kubernetes_alpha if v.enable_kubernetes_alpha != null }
}
output "container_clusters_enable_l4_ilb_subsetting" {
  description = "Map of enable_l4_ilb_subsetting values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_l4_ilb_subsetting are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_l4_ilb_subsetting if v.enable_l4_ilb_subsetting != null }
}
output "container_clusters_enable_legacy_abac" {
  description = "Map of enable_legacy_abac values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_legacy_abac are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_legacy_abac if v.enable_legacy_abac != null }
}
output "container_clusters_enable_multi_networking" {
  description = "Map of enable_multi_networking values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_multi_networking are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_multi_networking if v.enable_multi_networking != null }
}
output "container_clusters_enable_shielded_nodes" {
  description = "Map of enable_shielded_nodes values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_shielded_nodes are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_shielded_nodes if v.enable_shielded_nodes != null }
}
output "container_clusters_enable_tpu" {
  description = "Map of enable_tpu values across all container_clusters, keyed the same as var.container_clusters except keys with no enable_tpu are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.enable_tpu if v.enable_tpu != null }
}
output "container_clusters_endpoint" {
  description = "Map of endpoint values across all container_clusters, keyed the same as var.container_clusters except keys with no endpoint are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "container_clusters_enterprise_config" {
  description = "Map of enterprise_config values across all container_clusters, keyed the same as var.container_clusters except keys with no enterprise_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.enterprise_config) if v.enterprise_config != null && length(v.enterprise_config) > 0 }
}
output "container_clusters_fleet" {
  description = "Map of fleet values across all container_clusters, keyed the same as var.container_clusters except keys with no fleet are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.fleet) if v.fleet != null && length(v.fleet) > 0 }
}
output "container_clusters_gateway_api_config" {
  description = "Map of gateway_api_config values across all container_clusters, keyed the same as var.container_clusters except keys with no gateway_api_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.gateway_api_config) if v.gateway_api_config != null && length(v.gateway_api_config) > 0 }
}
output "container_clusters_gke_auto_upgrade_config" {
  description = "Map of gke_auto_upgrade_config values across all container_clusters, keyed the same as var.container_clusters except keys with no gke_auto_upgrade_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.gke_auto_upgrade_config) if v.gke_auto_upgrade_config != null && length(v.gke_auto_upgrade_config) > 0 }
}
output "container_clusters_identity_service_config" {
  description = "Map of identity_service_config values across all container_clusters, keyed the same as var.container_clusters except keys with no identity_service_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.identity_service_config) if v.identity_service_config != null && length(v.identity_service_config) > 0 }
}
output "container_clusters_ignore_node_count_changes" {
  description = "Map of ignore_node_count_changes values across all container_clusters, keyed the same as var.container_clusters except keys with no ignore_node_count_changes are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.ignore_node_count_changes if v.ignore_node_count_changes != null }
}
output "container_clusters_in_transit_encryption_config" {
  description = "Map of in_transit_encryption_config values across all container_clusters, keyed the same as var.container_clusters except keys with no in_transit_encryption_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.in_transit_encryption_config if v.in_transit_encryption_config != null && length(v.in_transit_encryption_config) > 0 }
}
output "container_clusters_initial_node_count" {
  description = "Map of initial_node_count values across all container_clusters, keyed the same as var.container_clusters except keys with no initial_node_count are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.initial_node_count if v.initial_node_count != null }
}
output "container_clusters_ip_allocation_policy" {
  description = "Map of ip_allocation_policy values across all container_clusters, keyed the same as var.container_clusters except keys with no ip_allocation_policy are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.ip_allocation_policy) if v.ip_allocation_policy != null && length(v.ip_allocation_policy) > 0 }
}
output "container_clusters_label_fingerprint" {
  description = "Map of label_fingerprint values across all container_clusters, keyed the same as var.container_clusters except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "container_clusters_location" {
  description = "Map of location values across all container_clusters, keyed the same as var.container_clusters except keys with no location are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "container_clusters_logging_config" {
  description = "Map of logging_config values across all container_clusters, keyed the same as var.container_clusters except keys with no logging_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.logging_config) if v.logging_config != null && length(v.logging_config) > 0 }
}
output "container_clusters_logging_service" {
  description = "Map of logging_service values across all container_clusters, keyed the same as var.container_clusters except keys with no logging_service are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.logging_service if v.logging_service != null && length(v.logging_service) > 0 }
}
output "container_clusters_maintenance_policy" {
  description = "Map of maintenance_policy values across all container_clusters, keyed the same as var.container_clusters except keys with no maintenance_policy are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.maintenance_policy) if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "container_clusters_master_auth" {
  description = "Map of master_auth values across all container_clusters, keyed the same as var.container_clusters except keys with no master_auth are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.master_auth) if v.master_auth != null && length(v.master_auth) > 0 }
  sensitive   = true
}
output "container_clusters_master_authorized_networks_config" {
  description = "Map of master_authorized_networks_config values across all container_clusters, keyed the same as var.container_clusters except keys with no master_authorized_networks_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.master_authorized_networks_config) if v.master_authorized_networks_config != null && length(v.master_authorized_networks_config) > 0 }
}
output "container_clusters_master_version" {
  description = "Map of master_version values across all container_clusters, keyed the same as var.container_clusters except keys with no master_version are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.master_version if v.master_version != null && length(v.master_version) > 0 }
}
output "container_clusters_mesh_certificates" {
  description = "Map of mesh_certificates values across all container_clusters, keyed the same as var.container_clusters except keys with no mesh_certificates are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.mesh_certificates) if v.mesh_certificates != null && length(v.mesh_certificates) > 0 }
}
output "container_clusters_min_master_version" {
  description = "Map of min_master_version values across all container_clusters, keyed the same as var.container_clusters except keys with no min_master_version are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.min_master_version if v.min_master_version != null && length(v.min_master_version) > 0 }
}
output "container_clusters_monitoring_config" {
  description = "Map of monitoring_config values across all container_clusters, keyed the same as var.container_clusters except keys with no monitoring_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.monitoring_config) if v.monitoring_config != null && length(v.monitoring_config) > 0 }
}
output "container_clusters_monitoring_service" {
  description = "Map of monitoring_service values across all container_clusters, keyed the same as var.container_clusters except keys with no monitoring_service are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.monitoring_service if v.monitoring_service != null && length(v.monitoring_service) > 0 }
}
output "container_clusters_name" {
  description = "Map of name values across all container_clusters, keyed the same as var.container_clusters except keys with no name are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_clusters_network" {
  description = "Map of network values across all container_clusters, keyed the same as var.container_clusters except keys with no network are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.network if v.network != null && length(v.network) > 0 }
}
output "container_clusters_network_performance_config" {
  description = "Map of network_performance_config values across all container_clusters, keyed the same as var.container_clusters except keys with no network_performance_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.network_performance_config) if v.network_performance_config != null && length(v.network_performance_config) > 0 }
}
output "container_clusters_network_policy" {
  description = "Map of network_policy values across all container_clusters, keyed the same as var.container_clusters except keys with no network_policy are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.network_policy) if v.network_policy != null && length(v.network_policy) > 0 }
}
output "container_clusters_networking_mode" {
  description = "Map of networking_mode values across all container_clusters, keyed the same as var.container_clusters except keys with no networking_mode are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.networking_mode if v.networking_mode != null && length(v.networking_mode) > 0 }
}
output "container_clusters_node_config" {
  description = "Map of node_config values across all container_clusters, keyed the same as var.container_clusters except keys with no node_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.node_config) if v.node_config != null && length(v.node_config) > 0 }
}
output "container_clusters_node_creation_config" {
  description = "Map of node_creation_config values across all container_clusters, keyed the same as var.container_clusters except keys with no node_creation_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.node_creation_config) if v.node_creation_config != null && length(v.node_creation_config) > 0 }
}
output "container_clusters_node_locations" {
  description = "Map of node_locations values across all container_clusters, keyed the same as var.container_clusters except keys with no node_locations are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.node_locations if v.node_locations != null && length(v.node_locations) > 0 }
}
output "container_clusters_node_pool" {
  description = "Map of node_pool values across all container_clusters, keyed the same as var.container_clusters except keys with no node_pool are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.node_pool if v.node_pool != null && length(v.node_pool) > 0 }
}
output "container_clusters_node_pool_auto_config" {
  description = "Map of node_pool_auto_config values across all container_clusters, keyed the same as var.container_clusters except keys with no node_pool_auto_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.node_pool_auto_config) if v.node_pool_auto_config != null && length(v.node_pool_auto_config) > 0 }
}
output "container_clusters_node_pool_defaults" {
  description = "Map of node_pool_defaults values across all container_clusters, keyed the same as var.container_clusters except keys with no node_pool_defaults are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.node_pool_defaults) if v.node_pool_defaults != null && length(v.node_pool_defaults) > 0 }
}
output "container_clusters_node_version" {
  description = "Map of node_version values across all container_clusters, keyed the same as var.container_clusters except keys with no node_version are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.node_version if v.node_version != null && length(v.node_version) > 0 }
}
output "container_clusters_notification_config" {
  description = "Map of notification_config values across all container_clusters, keyed the same as var.container_clusters except keys with no notification_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.notification_config) if v.notification_config != null && length(v.notification_config) > 0 }
}
output "container_clusters_operation" {
  description = "Map of operation values across all container_clusters, keyed the same as var.container_clusters except keys with no operation are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.operation if v.operation != null && length(v.operation) > 0 }
}
output "container_clusters_pod_autoscaling" {
  description = "Map of pod_autoscaling values across all container_clusters, keyed the same as var.container_clusters except keys with no pod_autoscaling are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.pod_autoscaling) if v.pod_autoscaling != null && length(v.pod_autoscaling) > 0 }
}
output "container_clusters_private_cluster_config" {
  description = "Map of private_cluster_config values across all container_clusters, keyed the same as var.container_clusters except keys with no private_cluster_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.private_cluster_config) if v.private_cluster_config != null && length(v.private_cluster_config) > 0 }
}
output "container_clusters_private_ipv6_google_access" {
  description = "Map of private_ipv6_google_access values across all container_clusters, keyed the same as var.container_clusters except keys with no private_ipv6_google_access are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.private_ipv6_google_access if v.private_ipv6_google_access != null && length(v.private_ipv6_google_access) > 0 }
}
output "container_clusters_project" {
  description = "Map of project values across all container_clusters, keyed the same as var.container_clusters except keys with no project are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "container_clusters_rbac_binding_config" {
  description = "Map of rbac_binding_config values across all container_clusters, keyed the same as var.container_clusters except keys with no rbac_binding_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.rbac_binding_config) if v.rbac_binding_config != null && length(v.rbac_binding_config) > 0 }
}
output "container_clusters_release_channel" {
  description = "Map of release_channel values across all container_clusters, keyed the same as var.container_clusters except keys with no release_channel are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.release_channel) if v.release_channel != null && length(v.release_channel) > 0 }
}
output "container_clusters_remove_default_node_pool" {
  description = "Map of remove_default_node_pool values across all container_clusters, keyed the same as var.container_clusters except keys with no remove_default_node_pool are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.remove_default_node_pool if v.remove_default_node_pool != null }
}
output "container_clusters_resource_labels" {
  description = "Map of resource_labels values across all container_clusters, keyed the same as var.container_clusters except keys with no resource_labels are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.resource_labels if v.resource_labels != null && length(v.resource_labels) > 0 }
}
output "container_clusters_resource_usage_export_config" {
  description = "Map of resource_usage_export_config values across all container_clusters, keyed the same as var.container_clusters except keys with no resource_usage_export_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.resource_usage_export_config) if v.resource_usage_export_config != null && length(v.resource_usage_export_config) > 0 }
}
output "container_clusters_rollback_safe_upgrade" {
  description = "Map of rollback_safe_upgrade values across all container_clusters, keyed the same as var.container_clusters except keys with no rollback_safe_upgrade are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.rollback_safe_upgrade) if v.rollback_safe_upgrade != null && length(v.rollback_safe_upgrade) > 0 }
}
output "container_clusters_secret_manager_config" {
  description = "Map of secret_manager_config values across all container_clusters, keyed the same as var.container_clusters except keys with no secret_manager_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.secret_manager_config) if v.secret_manager_config != null && length(v.secret_manager_config) > 0 }
}
output "container_clusters_secret_sync_config" {
  description = "Map of secret_sync_config values across all container_clusters, keyed the same as var.container_clusters except keys with no secret_sync_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.secret_sync_config) if v.secret_sync_config != null && length(v.secret_sync_config) > 0 }
}
output "container_clusters_security_posture_config" {
  description = "Map of security_posture_config values across all container_clusters, keyed the same as var.container_clusters except keys with no security_posture_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.security_posture_config) if v.security_posture_config != null && length(v.security_posture_config) > 0 }
}
output "container_clusters_self_link" {
  description = "Map of self_link values across all container_clusters, keyed the same as var.container_clusters except keys with no self_link are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "container_clusters_service_external_ips_config" {
  description = "Map of service_external_ips_config values across all container_clusters, keyed the same as var.container_clusters except keys with no service_external_ips_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.service_external_ips_config) if v.service_external_ips_config != null && length(v.service_external_ips_config) > 0 }
}
output "container_clusters_services_ipv4_cidr" {
  description = "Map of services_ipv4_cidr values across all container_clusters, keyed the same as var.container_clusters except keys with no services_ipv4_cidr are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.services_ipv4_cidr if v.services_ipv4_cidr != null && length(v.services_ipv4_cidr) > 0 }
}
output "container_clusters_skip_node_pool_refresh" {
  description = "Map of skip_node_pool_refresh values across all container_clusters, keyed the same as var.container_clusters except keys with no skip_node_pool_refresh are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.skip_node_pool_refresh if v.skip_node_pool_refresh != null }
}
output "container_clusters_subnetwork" {
  description = "Map of subnetwork values across all container_clusters, keyed the same as var.container_clusters except keys with no subnetwork are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.subnetwork if v.subnetwork != null && length(v.subnetwork) > 0 }
}
output "container_clusters_terraform_labels" {
  description = "Map of terraform_labels values across all container_clusters, keyed the same as var.container_clusters except keys with no terraform_labels are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "container_clusters_tpu_ipv4_cidr_block" {
  description = "Map of tpu_ipv4_cidr_block values across all container_clusters, keyed the same as var.container_clusters except keys with no tpu_ipv4_cidr_block are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => v.tpu_ipv4_cidr_block if v.tpu_ipv4_cidr_block != null && length(v.tpu_ipv4_cidr_block) > 0 }
}
output "container_clusters_user_managed_keys_config" {
  description = "Map of user_managed_keys_config values across all container_clusters, keyed the same as var.container_clusters except keys with no user_managed_keys_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.user_managed_keys_config) if v.user_managed_keys_config != null && length(v.user_managed_keys_config) > 0 }
}
output "container_clusters_vertical_pod_autoscaling" {
  description = "Map of vertical_pod_autoscaling values across all container_clusters, keyed the same as var.container_clusters except keys with no vertical_pod_autoscaling are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.vertical_pod_autoscaling) if v.vertical_pod_autoscaling != null && length(v.vertical_pod_autoscaling) > 0 }
}
output "container_clusters_workload_identity_config" {
  description = "Map of workload_identity_config values across all container_clusters, keyed the same as var.container_clusters except keys with no workload_identity_config are omitted"
  value       = { for k, v in google_container_cluster.container_clusters : k => one(v.workload_identity_config) if v.workload_identity_config != null && length(v.workload_identity_config) > 0 }
}

