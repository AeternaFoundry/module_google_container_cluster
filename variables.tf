variable "container_clusters" {
  description = <<EOT
Map of container_clusters, attributes below
Required:
    - name
Optional:
    - allow_net_admin
    - autopilot_privileged_admission
    - cluster_ipv4_cidr
    - datapath_provider
    - dataplane_optimization_mode
    - default_max_pods_per_node
    - deletion_policy
    - deletion_protection
    - description
    - desired_emulated_version
    - disable_l4_lb_firewall_reconciliation
    - enable_autopilot
    - enable_cilium_clusterwide_network_policy
    - enable_fqdn_network_policy
    - enable_intranode_visibility
    - enable_kubernetes_alpha
    - enable_l4_ilb_subsetting
    - enable_legacy_abac
    - enable_multi_networking
    - enable_shielded_nodes
    - enable_tpu
    - ignore_node_count_changes
    - in_transit_encryption_config
    - initial_node_count
    - location
    - logging_service
    - min_master_version
    - monitoring_service
    - network
    - networking_mode
    - node_locations
    - node_version
    - private_ipv6_google_access
    - project
    - remove_default_node_pool
    - resource_labels
    - skip_node_pool_refresh
    - subnetwork
    - addons_config (block):
        - agent_sandbox_config (optional, block):
            - enabled (required)
        - cloudrun_config (optional, block):
            - disabled (required)
            - load_balancer_type (optional)
        - config_connector_config (optional, block):
            - enabled (required)
        - dns_cache_config (optional, block):
            - enabled (required)
        - gce_persistent_disk_csi_driver_config (optional, block):
            - enabled (required)
        - gcp_filestore_csi_driver_config (optional, block):
            - enabled (required)
        - gcs_fuse_csi_driver_config (optional, block):
            - enabled (required)
        - gke_backup_agent_config (optional, block):
            - enabled (required)
        - high_scale_checkpointing_config (optional, block):
            - enabled (required)
        - horizontal_pod_autoscaling (optional, block):
            - disabled (required)
        - http_load_balancing (optional, block):
            - disabled (required)
        - lustre_csi_driver_config (optional, block):
            - disable_multi_nic (optional)
            - enable_legacy_lustre_port (optional)
            - enabled (required)
        - network_policy_config (optional, block):
            - disabled (required)
        - node_readiness_config (optional, block):
            - enabled (required)
        - parallelstore_csi_driver_config (optional, block):
            - enabled (required)
        - pod_snapshot_config (optional, block):
            - enabled (required)
        - ray_operator_config (optional, block):
            - enabled (required)
            - ray_cluster_logging_config (optional, block):
                - enabled (required)
            - ray_cluster_monitoring_config (optional, block):
                - enabled (required)
        - slice_controller_config (optional, block):
            - enabled (required)
        - slurm_operator_config (optional, block):
            - enabled (required)
        - stateful_ha_config (optional, block):
            - enabled (required)
    - anonymous_authentication_config (block):
        - mode (required)
    - authenticator_groups_config (block):
        - security_group (required)
    - autopilot_cluster_policy_config (block):
        - no_standard_node_pools (optional)
        - no_system_impersonation (optional)
        - no_system_mutation (optional)
        - no_unsafe_webhooks (optional)
    - binary_authorization (block):
        - enabled (optional)
        - evaluation_mode (optional)
    - cluster_autoscaling (block):
        - auto_provisioning_defaults (optional, block):
            - boot_disk_kms_key (optional)
            - disk_size (optional)
            - disk_type (optional)
            - image_type (optional)
            - management (optional, block):
                - auto_repair (optional)
                - auto_upgrade (optional)
            - min_cpu_platform (optional)
            - oauth_scopes (optional)
            - service_account (optional)
            - shielded_instance_config (optional, block):
                - enable_integrity_monitoring (optional)
                - enable_secure_boot (optional)
            - upgrade_settings (optional, block):
                - blue_green_settings (optional, block):
                    - node_pool_soak_duration (optional)
                    - standard_rollout_policy (optional, block):
                        - batch_node_count (optional)
                        - batch_percentage (optional)
                        - batch_soak_duration (optional)
                - max_surge (optional)
                - max_unavailable (optional)
                - strategy (optional)
        - auto_provisioning_locations (optional)
        - autoscaling_profile (optional)
        - default_compute_class_enabled (optional)
        - enabled (optional)
        - resource_limits (optional, block):
            - maximum (required)
            - minimum (optional)
            - resource_type (required)
    - confidential_nodes (block):
        - confidential_instance_type (optional)
        - enabled (required)
    - control_plane_endpoints_config (block):
        - dns_endpoint_config (optional, block):
            - allow_external_traffic (optional)
            - enable_k8s_certs_via_dns (optional)
            - enable_k8s_tokens_via_dns (optional)
            - endpoint (optional)
        - ip_endpoints_config (optional, block):
            - enabled (optional)
    - cost_management_config (block):
        - enabled (required)
    - database_encryption (block):
        - key_name (optional)
        - state (required)
    - default_snat_status (block):
        - disabled (required)
    - dns_config (block):
        - additive_vpc_scope_dns_domain (optional)
        - cluster_dns (optional)
        - cluster_dns_domain (optional)
        - cluster_dns_scope (optional)
    - enable_k8s_beta_apis (block):
        - enabled_apis (required)
    - enterprise_config (block):
        - desired_tier (optional)
    - fleet (block):
        - membership_type (optional)
        - project (optional)
    - gateway_api_config (block):
        - channel (required)
    - gke_auto_upgrade_config (block):
        - patch_mode (required)
    - identity_service_config (block):
        - enabled (optional)
    - ip_allocation_policy (block):
        - additional_ip_ranges_config (optional, block):
            - pod_ipv4_range_names (optional)
            - status (optional)
            - subnetwork (required)
        - additional_pod_ranges_config (optional, block):
            - pod_range_names (required)
        - auto_ipam_config (optional, block):
            - enabled (required)
        - cluster_ipv4_cidr_block (optional)
        - cluster_secondary_range_name (optional)
        - network_tier_config (optional, block):
            - network_tier (required)
        - pod_cidr_overprovision_config (optional, block):
            - disabled (required)
        - services_ipv4_cidr_block (optional)
        - services_secondary_range_name (optional)
        - stack_type (optional)
    - logging_config (block):
        - enable_components (required)
    - maintenance_policy (block):
        - daily_maintenance_window (optional, block):
            - start_time (required)
        - disruption_budget (optional, block):
            - minor_version_disruption_interval (optional)
            - patch_version_disruption_interval (optional)
        - maintenance_exclusion (optional, block):
            - end_time (optional)
            - exclusion_name (required)
            - exclusion_options (optional, block):
                - end_time_behavior (optional)
                - scope (required)
            - start_time (required)
        - recurring_maintenance_window (optional, block):
            - delay_until (optional, block):
                - day (required)
                - month (required)
                - year (required)
            - recurrence (required)
            - window_duration (required)
            - window_start_time (required, block):
                - hours (required)
                - minutes (required)
                - seconds (required)
        - recurring_window (optional, block):
            - end_time (required)
            - recurrence (required)
            - start_time (required)
    - master_auth (block):
        - client_certificate_config (required, block):
            - issue_client_certificate (required)
    - master_authorized_networks_config (block):
        - cidr_blocks (optional, block):
            - cidr_block (required)
            - display_name (optional)
        - gcp_public_cidrs_access_enabled (optional)
        - private_endpoint_enforcement_enabled (optional)
    - mesh_certificates (block):
        - enable_certificates (required)
    - monitoring_config (block):
        - advanced_datapath_observability_config (optional, block):
            - enable_metrics (required)
            - enable_relay (required)
        - enable_components (optional)
        - managed_prometheus (optional, block):
            - auto_monitoring_config (optional, block):
                - scope (required)
            - enabled (required)
    - network_performance_config (block):
        - total_egress_bandwidth_tier (required)
    - network_policy (block):
        - enabled (required)
        - provider (optional)
    - node_config (block):
        - advanced_machine_features (optional, block):
            - enable_nested_virtualization (optional)
            - performance_monitoring_unit (optional)
            - threads_per_core (required)
        - boot_disk (optional, block):
            - disk_type (optional)
            - provisioned_iops (optional)
            - provisioned_throughput (optional)
            - size_gb (optional)
        - boot_disk_kms_key (optional)
        - confidential_nodes (optional, block):
            - confidential_instance_type (optional)
            - enabled (required)
        - containerd_config (optional, block):
            - private_registry_access_config (optional, block):
                - certificate_authority_domain_config (optional, block):
                    - fqdns (required)
                    - gcp_secret_manager_certificate_config (required, block):
                        - secret_uri (required)
                - enabled (required)
            - registry_hosts (optional, block):
                - hosts (optional, block):
                    - ca (optional, block):
                        - gcp_secret_manager_secret_uri (optional)
                    - capabilities (optional)
                    - client (optional, block):
                        - cert (required, block):
                            - gcp_secret_manager_secret_uri (optional)
                        - key (optional, block):
                            - gcp_secret_manager_secret_uri (optional)
                    - dial_timeout (optional)
                    - header (optional, block):
                        - key (required)
                        - value (required)
                    - host (required)
                    - override_path (optional)
                - server (required)
            - writable_cgroups (optional, block):
                - enabled (required)
        - disk_size_gb (optional)
        - disk_type (optional)
        - enable_confidential_storage (optional)
        - ephemeral_storage_local_ssd_config (optional, block):
            - data_cache_count (optional)
            - local_ssd_count (required)
        - fast_socket (optional, block):
            - enabled (required)
        - flex_start (optional)
        - gcfs_config (optional, block):
            - enabled (required)
        - gpudirect_strategy (optional)
        - guest_accelerator (optional, block):
            - count (required)
            - gpu_driver_installation_config (optional, block):
                - gpu_driver_version (required)
            - gpu_partition_size (optional)
            - gpu_sharing_config (optional, block):
                - gpu_sharing_strategy (required)
                - max_shared_clients_per_gpu (required)
            - type (required)
        - gvnic (optional, block):
            - enabled (required)
        - image_type (optional)
        - kubelet_config (optional, block):
            - allowed_unsafe_sysctls (optional)
            - container_log_max_files (optional)
            - container_log_max_size (optional)
            - cpu_cfs_quota (optional)
            - cpu_cfs_quota_period (optional)
            - cpu_manager_policy (optional)
            - crash_loop_back_off (optional, block):
                - max_container_restart_period (optional)
            - eviction_max_pod_grace_period_seconds (optional)
            - eviction_minimum_reclaim (optional, block):
                - imagefs_available (optional)
                - imagefs_inodes_free (optional)
                - memory_available (optional)
                - nodefs_available (optional)
                - nodefs_inodes_free (optional)
                - pid_available (optional)
            - eviction_soft (optional, block):
                - imagefs_available (optional)
                - imagefs_inodes_free (optional)
                - memory_available (optional)
                - nodefs_available (optional)
                - nodefs_inodes_free (optional)
                - pid_available (optional)
            - eviction_soft_grace_period (optional, block):
                - imagefs_available (optional)
                - imagefs_inodes_free (optional)
                - memory_available (optional)
                - nodefs_available (optional)
                - nodefs_inodes_free (optional)
                - pid_available (optional)
            - image_gc_high_threshold_percent (optional)
            - image_gc_low_threshold_percent (optional)
            - image_maximum_gc_age (optional)
            - image_minimum_gc_age (optional)
            - insecure_kubelet_readonly_port_enabled (optional)
            - max_parallel_image_pulls (optional)
            - memory_manager (optional, block):
                - policy (optional)
            - pod_pids_limit (optional)
            - shutdown_grace_period_critical_pods_seconds (optional)
            - shutdown_grace_period_seconds (optional)
            - single_process_oom_kill (optional)
            - topology_manager (optional, block):
                - policy (optional)
                - scope (optional)
        - labels (optional)
        - linux_node_config (optional, block):
            - accurate_time_config (optional, block):
                - enable_ptp_kvm_time_sync (optional)
            - cgroup_mode (optional)
            - custom_node_init (optional, block):
                - init_script (optional, block):
                    - gcp_secret_manager_secret_uri (optional)
                    - gcs_generation (optional)
                    - gcs_uri (optional)
            - hugepages_config (optional, block):
                - hugepage_size_1g (optional)
                - hugepage_size_2m (optional)
            - node_kernel_module_loading (optional, block):
                - policy (optional)
            - swap_config (optional, block):
                - boot_disk_profile (optional, block):
                    - swap_size_gib (optional)
                    - swap_size_percent (optional)
                - dedicated_local_ssd_profile (optional, block):
                    - disk_count (optional)
                - enabled (optional)
                - encryption_config (optional, block):
                    - disabled (optional)
                - ephemeral_local_ssd_profile (optional, block):
                    - swap_size_gib (optional)
                    - swap_size_percent (optional)
            - sysctls (optional)
            - transparent_hugepage_defrag (optional)
            - transparent_hugepage_enabled (optional)
        - local_nvme_ssd_block_config (optional, block):
            - local_ssd_count (required)
        - local_ssd_count (optional)
        - local_ssd_encryption_mode (optional)
        - logging_variant (optional)
        - machine_type (optional)
        - max_run_duration (optional)
        - metadata (optional)
        - min_cpu_platform (optional)
        - node_group (optional)
        - node_image_config (optional, block):
            - image (optional)
            - image_project (optional)
        - oauth_scopes (optional)
        - preemptible (optional)
        - reservation_affinity (optional, block):
            - consume_reservation_type (required)
            - key (optional)
            - values (optional)
        - resource_labels (optional)
        - resource_manager_tags (optional)
        - sandbox_config (optional, block):
            - type (required)
        - secondary_boot_disks (optional, block):
            - disk_image (required)
            - mode (optional)
        - service_account (optional)
        - shielded_instance_config (optional, block):
            - enable_integrity_monitoring (optional)
            - enable_secure_boot (optional)
        - sole_tenant_config (optional, block):
            - min_node_cpus (optional)
            - node_affinity (required, block):
                - key (required)
                - operator (required)
                - values (required)
        - spot (optional)
        - storage_pools (optional)
        - tags (optional)
        - taint (optional, block):
            - effect (required)
            - key (required)
            - value (required)
        - taint_config (optional, block):
            - architecture_taint_behavior (required)
        - windows_node_config (optional, block):
            - osversion (optional)
        - workload_metadata_config (optional, block):
            - mode (required)
    - node_creation_config (block):
        - node_creation_mode (required)
    - node_pool (block):
        - autoscaling (optional, block):
            - location_policy (optional)
            - max_node_count (optional)
            - min_node_count (optional)
            - total_max_node_count (optional)
            - total_min_node_count (optional)
        - ignore_node_count_changes (optional)
        - initial_node_count (optional)
        - maintenance_policy (optional, block):
            - exclusion_until_end_of_support (optional, block):
                - enabled (optional)
        - management (optional, block):
            - auto_repair (optional)
            - auto_upgrade (optional)
        - max_pods_per_node (optional)
        - name (optional)
        - name_prefix (optional)
        - network_config (optional, block):
            - accelerator_network_profile (optional)
            - additional_node_network_configs (optional, block):
                - network (optional)
                - subnetwork (optional)
            - additional_pod_network_configs (optional, block):
                - max_pods_per_node (optional)
                - secondary_pod_range (optional)
                - subnetwork (optional)
            - create_pod_range (optional)
            - enable_private_nodes (optional)
            - network_performance_config (optional, block):
                - total_egress_bandwidth_tier (required)
            - pod_cidr_overprovision_config (optional, block):
                - disabled (required)
            - pod_ipv4_cidr_block (optional)
            - pod_range (optional)
            - subnetwork (optional)
        - node_config (optional, block):
            - advanced_machine_features (optional, block):
                - enable_nested_virtualization (optional)
                - performance_monitoring_unit (optional)
                - threads_per_core (required)
            - boot_disk (optional, block):
                - disk_type (optional)
                - provisioned_iops (optional)
                - provisioned_throughput (optional)
                - size_gb (optional)
            - boot_disk_kms_key (optional)
            - confidential_nodes (optional, block):
                - confidential_instance_type (optional)
                - enabled (required)
            - containerd_config (optional, block):
                - private_registry_access_config (optional, block):
                    - certificate_authority_domain_config (optional, block):
                        - fqdns (required)
                        - gcp_secret_manager_certificate_config (required, block):
                            - secret_uri (required)
                    - enabled (required)
                - registry_hosts (optional, block):
                    - hosts (optional, block):
                        - ca (optional, block):
                            - gcp_secret_manager_secret_uri (optional)
                        - capabilities (optional)
                        - client (optional, block):
                            - cert (required, block):
                                - gcp_secret_manager_secret_uri (optional)
                            - key (optional, block):
                                - gcp_secret_manager_secret_uri (optional)
                        - dial_timeout (optional)
                        - header (optional, block):
                            - key (required)
                            - value (required)
                        - host (required)
                        - override_path (optional)
                    - server (required)
                - writable_cgroups (optional, block):
                    - enabled (required)
            - disk_size_gb (optional)
            - disk_type (optional)
            - enable_confidential_storage (optional)
            - ephemeral_storage_local_ssd_config (optional, block):
                - data_cache_count (optional)
                - local_ssd_count (required)
            - fast_socket (optional, block):
                - enabled (required)
            - flex_start (optional)
            - gcfs_config (optional, block):
                - enabled (required)
            - gpudirect_strategy (optional)
            - guest_accelerator (optional, block):
                - count (required)
                - gpu_driver_installation_config (optional, block):
                    - gpu_driver_version (required)
                - gpu_partition_size (optional)
                - gpu_sharing_config (optional, block):
                    - gpu_sharing_strategy (required)
                    - max_shared_clients_per_gpu (required)
                - type (required)
            - gvnic (optional, block):
                - enabled (required)
            - image_type (optional)
            - kubelet_config (optional, block):
                - allowed_unsafe_sysctls (optional)
                - container_log_max_files (optional)
                - container_log_max_size (optional)
                - cpu_cfs_quota (optional)
                - cpu_cfs_quota_period (optional)
                - cpu_manager_policy (optional)
                - crash_loop_back_off (optional, block):
                    - max_container_restart_period (optional)
                - eviction_max_pod_grace_period_seconds (optional)
                - eviction_minimum_reclaim (optional, block):
                    - imagefs_available (optional)
                    - imagefs_inodes_free (optional)
                    - memory_available (optional)
                    - nodefs_available (optional)
                    - nodefs_inodes_free (optional)
                    - pid_available (optional)
                - eviction_soft (optional, block):
                    - imagefs_available (optional)
                    - imagefs_inodes_free (optional)
                    - memory_available (optional)
                    - nodefs_available (optional)
                    - nodefs_inodes_free (optional)
                    - pid_available (optional)
                - eviction_soft_grace_period (optional, block):
                    - imagefs_available (optional)
                    - imagefs_inodes_free (optional)
                    - memory_available (optional)
                    - nodefs_available (optional)
                    - nodefs_inodes_free (optional)
                    - pid_available (optional)
                - image_gc_high_threshold_percent (optional)
                - image_gc_low_threshold_percent (optional)
                - image_maximum_gc_age (optional)
                - image_minimum_gc_age (optional)
                - insecure_kubelet_readonly_port_enabled (optional)
                - max_parallel_image_pulls (optional)
                - memory_manager (optional, block):
                    - policy (optional)
                - pod_pids_limit (optional)
                - shutdown_grace_period_critical_pods_seconds (optional)
                - shutdown_grace_period_seconds (optional)
                - single_process_oom_kill (optional)
                - topology_manager (optional, block):
                    - policy (optional)
                    - scope (optional)
            - labels (optional)
            - linux_node_config (optional, block):
                - accurate_time_config (optional, block):
                    - enable_ptp_kvm_time_sync (optional)
                - cgroup_mode (optional)
                - custom_node_init (optional, block):
                    - init_script (optional, block):
                        - gcp_secret_manager_secret_uri (optional)
                        - gcs_generation (optional)
                        - gcs_uri (optional)
                - hugepages_config (optional, block):
                    - hugepage_size_1g (optional)
                    - hugepage_size_2m (optional)
                - node_kernel_module_loading (optional, block):
                    - policy (optional)
                - swap_config (optional, block):
                    - boot_disk_profile (optional, block):
                        - swap_size_gib (optional)
                        - swap_size_percent (optional)
                    - dedicated_local_ssd_profile (optional, block):
                        - disk_count (optional)
                    - enabled (optional)
                    - encryption_config (optional, block):
                        - disabled (optional)
                    - ephemeral_local_ssd_profile (optional, block):
                        - swap_size_gib (optional)
                        - swap_size_percent (optional)
                - sysctls (optional)
                - transparent_hugepage_defrag (optional)
                - transparent_hugepage_enabled (optional)
            - local_nvme_ssd_block_config (optional, block):
                - local_ssd_count (required)
            - local_ssd_count (optional)
            - local_ssd_encryption_mode (optional)
            - logging_variant (optional)
            - machine_type (optional)
            - max_run_duration (optional)
            - metadata (optional)
            - min_cpu_platform (optional)
            - node_group (optional)
            - node_image_config (optional, block):
                - image (optional)
                - image_project (optional)
            - oauth_scopes (optional)
            - preemptible (optional)
            - reservation_affinity (optional, block):
                - consume_reservation_type (required)
                - key (optional)
                - values (optional)
            - resource_labels (optional)
            - resource_manager_tags (optional)
            - sandbox_config (optional, block):
                - type (required)
            - secondary_boot_disks (optional, block):
                - disk_image (required)
                - mode (optional)
            - service_account (optional)
            - shielded_instance_config (optional, block):
                - enable_integrity_monitoring (optional)
                - enable_secure_boot (optional)
            - sole_tenant_config (optional, block):
                - min_node_cpus (optional)
                - node_affinity (required, block):
                    - key (required)
                    - operator (required)
                    - values (required)
            - spot (optional)
            - storage_pools (optional)
            - tags (optional)
            - taint (optional, block):
                - effect (required)
                - key (required)
                - value (required)
            - taint_config (optional, block):
                - architecture_taint_behavior (required)
            - windows_node_config (optional, block):
                - osversion (optional)
            - workload_metadata_config (optional, block):
                - mode (required)
        - node_count (optional)
        - node_drain_config (optional, block):
            - grace_termination_duration (optional)
            - pdb_timeout_duration (optional)
            - respect_pdb_during_node_pool_deletion (optional)
        - node_locations (optional)
        - placement_policy (optional, block):
            - policy_name (optional)
            - tpu_topology (optional)
            - type (required)
        - queued_provisioning (optional, block):
            - enabled (required)
        - upgrade_settings (optional, block):
            - blue_green_settings (optional, block):
                - node_pool_soak_duration (optional)
                - standard_rollout_policy (required, block):
                    - batch_node_count (optional)
                    - batch_percentage (optional)
                    - batch_soak_duration (optional)
            - max_surge (optional)
            - max_unavailable (optional)
            - strategy (optional)
        - version (optional)
    - node_pool_auto_config (block):
        - linux_node_config (optional, block):
            - cgroup_mode (optional)
            - node_kernel_module_loading (optional, block):
                - policy (optional)
        - network_tags (optional, block):
            - tags (optional)
        - node_kubelet_config (optional, block):
            - insecure_kubelet_readonly_port_enabled (optional)
        - resource_manager_tags (optional)
    - node_pool_defaults (block):
        - node_config_defaults (optional, block):
            - containerd_config (optional, block):
                - private_registry_access_config (optional, block):
                    - certificate_authority_domain_config (optional, block):
                        - fqdns (required)
                        - gcp_secret_manager_certificate_config (required, block):
                            - secret_uri (required)
                    - enabled (required)
                - registry_hosts (optional, block):
                    - hosts (optional, block):
                        - ca (optional, block):
                            - gcp_secret_manager_secret_uri (optional)
                        - capabilities (optional)
                        - client (optional, block):
                            - cert (required, block):
                                - gcp_secret_manager_secret_uri (optional)
                            - key (optional, block):
                                - gcp_secret_manager_secret_uri (optional)
                        - dial_timeout (optional)
                        - header (optional, block):
                            - key (required)
                            - value (required)
                        - host (required)
                        - override_path (optional)
                    - server (required)
                - writable_cgroups (optional, block):
                    - enabled (required)
            - gcfs_config (optional, block):
                - enabled (required)
            - insecure_kubelet_readonly_port_enabled (optional)
            - logging_variant (optional)
    - notification_config (block):
        - pubsub (required, block):
            - enabled (required)
            - filter (optional, block):
                - event_type (required)
            - topic (optional)
    - pod_autoscaling (block):
        - hpa_profile (required)
    - private_cluster_config (block):
        - enable_private_endpoint (optional)
        - enable_private_nodes (optional)
        - master_global_access_config (optional, block):
            - enabled (required)
        - master_ipv4_cidr_block (optional)
        - private_endpoint_subnetwork (optional)
    - rbac_binding_config (block):
        - enable_insecure_binding_system_authenticated (optional)
        - enable_insecure_binding_system_unauthenticated (optional)
    - release_channel (block):
        - channel (required)
    - resource_usage_export_config (block):
        - bigquery_destination (required, block):
            - dataset_id (required)
        - enable_network_egress_metering (optional)
        - enable_resource_consumption_metering (optional)
    - rollback_safe_upgrade (block):
        - control_plane_soak_duration (optional)
    - secret_manager_config (block):
        - enabled (required)
        - rotation_config (optional, block):
            - enabled (required)
            - rotation_interval (optional)
    - secret_sync_config (block):
        - enabled (required)
        - rotation_config (optional, block):
            - enabled (required)
            - rotation_interval (optional)
    - security_posture_config (block):
        - mode (optional)
        - vulnerability_mode (optional)
    - service_external_ips_config (block):
        - enabled (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
    - user_managed_keys_config (block):
        - aggregation_ca (optional)
        - cluster_ca (optional)
        - control_plane_disk_encryption_key (optional)
        - etcd_api_ca (optional)
        - etcd_peer_ca (optional)
        - gkeops_etcd_backup_encryption_key (optional)
        - service_account_signing_keys (optional)
        - service_account_verification_keys (optional)
    - vertical_pod_autoscaling (block):
        - enabled (required)
    - workload_identity_config (block):
        - workload_pool (optional)
EOT

  type = map(object({
    name                                     = string
    allow_net_admin                          = optional(bool)
    autopilot_privileged_admission           = optional(list(string))
    cluster_ipv4_cidr                        = optional(string)
    datapath_provider                        = optional(string)
    dataplane_optimization_mode              = optional(string)
    default_max_pods_per_node                = optional(number)
    deletion_policy                          = optional(string)
    deletion_protection                      = optional(bool)
    description                              = optional(string)
    desired_emulated_version                 = optional(string)
    disable_l4_lb_firewall_reconciliation    = optional(bool)
    enable_autopilot                         = optional(bool)
    enable_cilium_clusterwide_network_policy = optional(bool)
    enable_fqdn_network_policy               = optional(bool)
    enable_intranode_visibility              = optional(bool)
    enable_kubernetes_alpha                  = optional(bool)
    enable_l4_ilb_subsetting                 = optional(bool)
    enable_legacy_abac                       = optional(bool)
    enable_multi_networking                  = optional(bool)
    enable_shielded_nodes                    = optional(bool)
    enable_tpu                               = optional(bool)
    ignore_node_count_changes                = optional(bool)
    in_transit_encryption_config             = optional(string)
    initial_node_count                       = optional(number)
    location                                 = optional(string)
    logging_service                          = optional(string)
    min_master_version                       = optional(string)
    monitoring_service                       = optional(string)
    network                                  = optional(string)
    networking_mode                          = optional(string)
    node_locations                           = optional(set(string))
    node_version                             = optional(string)
    private_ipv6_google_access               = optional(string)
    project                                  = optional(string)
    remove_default_node_pool                 = optional(bool)
    resource_labels                          = optional(map(string))
    skip_node_pool_refresh                   = optional(bool)
    subnetwork                               = optional(string)
    addons_config = optional(object({
      agent_sandbox_config = optional(object({
        enabled = bool
      }))
      cloudrun_config = optional(object({
        disabled           = bool
        load_balancer_type = optional(string)
      }))
      config_connector_config = optional(object({
        enabled = bool
      }))
      dns_cache_config = optional(object({
        enabled = bool
      }))
      gce_persistent_disk_csi_driver_config = optional(object({
        enabled = bool
      }))
      gcp_filestore_csi_driver_config = optional(object({
        enabled = bool
      }))
      gcs_fuse_csi_driver_config = optional(object({
        enabled = bool
      }))
      gke_backup_agent_config = optional(object({
        enabled = bool
      }))
      high_scale_checkpointing_config = optional(object({
        enabled = bool
      }))
      horizontal_pod_autoscaling = optional(object({
        disabled = bool
      }))
      http_load_balancing = optional(object({
        disabled = bool
      }))
      lustre_csi_driver_config = optional(object({
        disable_multi_nic         = optional(bool)
        enable_legacy_lustre_port = optional(bool)
        enabled                   = bool
      }))
      network_policy_config = optional(object({
        disabled = bool
      }))
      node_readiness_config = optional(object({
        enabled = bool
      }))
      parallelstore_csi_driver_config = optional(object({
        enabled = bool
      }))
      pod_snapshot_config = optional(object({
        enabled = bool
      }))
      ray_operator_config = optional(list(object({
        enabled = bool
        ray_cluster_logging_config = optional(object({
          enabled = bool
        }))
        ray_cluster_monitoring_config = optional(object({
          enabled = bool
        }))
      })))
      slice_controller_config = optional(object({
        enabled = bool
      }))
      slurm_operator_config = optional(object({
        enabled = bool
      }))
      stateful_ha_config = optional(object({
        enabled = bool
      }))
    }))
    anonymous_authentication_config = optional(object({
      mode = string
    }))
    authenticator_groups_config = optional(object({
      security_group = string
    }))
    autopilot_cluster_policy_config = optional(object({
      no_standard_node_pools  = optional(bool)
      no_system_impersonation = optional(bool)
      no_system_mutation      = optional(bool)
      no_unsafe_webhooks      = optional(bool)
    }))
    binary_authorization = optional(object({
      enabled         = optional(bool)
      evaluation_mode = optional(string)
    }))
    cluster_autoscaling = optional(object({
      auto_provisioning_defaults = optional(object({
        boot_disk_kms_key = optional(string)
        disk_size         = optional(number)
        disk_type         = optional(string)
        image_type        = optional(string)
        management = optional(object({
          auto_repair  = optional(bool)
          auto_upgrade = optional(bool)
        }))
        min_cpu_platform = optional(string)
        oauth_scopes     = optional(list(string))
        service_account  = optional(string)
        shielded_instance_config = optional(object({
          enable_integrity_monitoring = optional(bool)
          enable_secure_boot          = optional(bool)
        }))
        upgrade_settings = optional(object({
          blue_green_settings = optional(object({
            node_pool_soak_duration = optional(string)
            standard_rollout_policy = optional(object({
              batch_node_count    = optional(number)
              batch_percentage    = optional(number)
              batch_soak_duration = optional(string)
            }))
          }))
          max_surge       = optional(number)
          max_unavailable = optional(number)
          strategy        = optional(string)
        }))
      }))
      auto_provisioning_locations   = optional(list(string))
      autoscaling_profile           = optional(string)
      default_compute_class_enabled = optional(bool)
      enabled                       = optional(bool)
      resource_limits = optional(list(object({
        maximum       = number
        minimum       = optional(number)
        resource_type = string
      })))
    }))
    confidential_nodes = optional(object({
      confidential_instance_type = optional(string)
      enabled                    = bool
    }))
    control_plane_endpoints_config = optional(object({
      dns_endpoint_config = optional(object({
        allow_external_traffic    = optional(bool)
        enable_k8s_certs_via_dns  = optional(bool)
        enable_k8s_tokens_via_dns = optional(bool)
        endpoint                  = optional(string)
      }))
      ip_endpoints_config = optional(object({
        enabled = optional(bool)
      }))
    }))
    cost_management_config = optional(object({
      enabled = bool
    }))
    database_encryption = optional(object({
      key_name = optional(string)
      state    = string
    }))
    default_snat_status = optional(object({
      disabled = bool
    }))
    dns_config = optional(object({
      additive_vpc_scope_dns_domain = optional(string)
      cluster_dns                   = optional(string)
      cluster_dns_domain            = optional(string)
      cluster_dns_scope             = optional(string)
    }))
    enable_k8s_beta_apis = optional(object({
      enabled_apis = set(string)
    }))
    enterprise_config = optional(object({
      desired_tier = optional(string)
    }))
    fleet = optional(object({
      membership_type = optional(string)
      project         = optional(string)
    }))
    gateway_api_config = optional(object({
      channel = string
    }))
    gke_auto_upgrade_config = optional(object({
      patch_mode = string
    }))
    identity_service_config = optional(object({
      enabled = optional(bool)
    }))
    ip_allocation_policy = optional(object({
      additional_ip_ranges_config = optional(list(object({
        pod_ipv4_range_names = optional(list(string))
        status               = optional(string)
        subnetwork           = string
      })))
      additional_pod_ranges_config = optional(object({
        pod_range_names = set(string)
      }))
      auto_ipam_config = optional(object({
        enabled = bool
      }))
      cluster_ipv4_cidr_block      = optional(string)
      cluster_secondary_range_name = optional(string)
      network_tier_config = optional(object({
        network_tier = string
      }))
      pod_cidr_overprovision_config = optional(object({
        disabled = bool
      }))
      services_ipv4_cidr_block      = optional(string)
      services_secondary_range_name = optional(string)
      stack_type                    = optional(string)
    }))
    logging_config = optional(object({
      enable_components = set(string)
    }))
    maintenance_policy = optional(object({
      daily_maintenance_window = optional(object({
        start_time = string
      }))
      disruption_budget = optional(object({
        minor_version_disruption_interval = optional(string)
        patch_version_disruption_interval = optional(string)
      }))
      maintenance_exclusion = optional(list(object({
        end_time       = optional(string)
        exclusion_name = string
        exclusion_options = optional(object({
          end_time_behavior = optional(string)
          scope             = string
        }))
        start_time = string
      })))
      recurring_maintenance_window = optional(object({
        delay_until = optional(object({
          day   = number
          month = number
          year  = number
        }))
        recurrence      = string
        window_duration = string
        window_start_time = object({
          hours   = number
          minutes = number
          seconds = number
        })
      }))
      recurring_window = optional(object({
        end_time   = string
        recurrence = string
        start_time = string
      }))
    }))
    master_auth = optional(object({
      client_certificate_config = object({
        issue_client_certificate = bool
      })
    }))
    master_authorized_networks_config = optional(object({
      cidr_blocks = optional(list(object({
        cidr_block   = string
        display_name = optional(string)
      })))
      gcp_public_cidrs_access_enabled      = optional(bool)
      private_endpoint_enforcement_enabled = optional(bool)
    }))
    mesh_certificates = optional(object({
      enable_certificates = bool
    }))
    monitoring_config = optional(object({
      advanced_datapath_observability_config = optional(object({
        enable_metrics = bool
        enable_relay   = bool
      }))
      enable_components = optional(set(string))
      managed_prometheus = optional(object({
        auto_monitoring_config = optional(object({
          scope = string
        }))
        enabled = bool
      }))
    }))
    network_performance_config = optional(object({
      total_egress_bandwidth_tier = string
    }))
    network_policy = optional(object({
      enabled  = bool
      provider = optional(string)
    }))
    node_config = optional(object({
      advanced_machine_features = optional(object({
        enable_nested_virtualization = optional(bool)
        performance_monitoring_unit  = optional(string)
        threads_per_core             = number
      }))
      boot_disk = optional(object({
        disk_type              = optional(string)
        provisioned_iops       = optional(number)
        provisioned_throughput = optional(number)
        size_gb                = optional(number)
      }))
      boot_disk_kms_key = optional(string)
      confidential_nodes = optional(object({
        confidential_instance_type = optional(string)
        enabled                    = bool
      }))
      containerd_config = optional(object({
        private_registry_access_config = optional(object({
          certificate_authority_domain_config = optional(list(object({
            fqdns = list(string)
            gcp_secret_manager_certificate_config = object({
              secret_uri = string
            })
          })))
          enabled = bool
        }))
        registry_hosts = optional(list(object({
          hosts = optional(list(object({
            ca = optional(list(object({
              gcp_secret_manager_secret_uri = optional(string)
            })))
            capabilities = optional(list(string))
            client = optional(list(object({
              cert = object({
                gcp_secret_manager_secret_uri = optional(string)
              })
              key = optional(object({
                gcp_secret_manager_secret_uri = optional(string)
              }))
            })))
            dial_timeout = optional(string)
            header = optional(list(object({
              key   = string
              value = list(string)
            })))
            host          = string
            override_path = optional(bool)
          })))
          server = string
        })))
        writable_cgroups = optional(object({
          enabled = bool
        }))
      }))
      disk_size_gb                = optional(number)
      disk_type                   = optional(string)
      enable_confidential_storage = optional(bool)
      ephemeral_storage_local_ssd_config = optional(object({
        data_cache_count = optional(number)
        local_ssd_count  = number
      }))
      fast_socket = optional(object({
        enabled = bool
      }))
      flex_start = optional(bool)
      gcfs_config = optional(object({
        enabled = bool
      }))
      gpudirect_strategy = optional(string)
      guest_accelerator = optional(list(object({
        count = number
        gpu_driver_installation_config = optional(object({
          gpu_driver_version = string
        }))
        gpu_partition_size = optional(string)
        gpu_sharing_config = optional(object({
          gpu_sharing_strategy       = string
          max_shared_clients_per_gpu = number
        }))
        type = string
      })))
      gvnic = optional(object({
        enabled = bool
      }))
      image_type = optional(string)
      kubelet_config = optional(object({
        allowed_unsafe_sysctls  = optional(list(string))
        container_log_max_files = optional(number)
        container_log_max_size  = optional(string)
        cpu_cfs_quota           = optional(bool)
        cpu_cfs_quota_period    = optional(string)
        cpu_manager_policy      = optional(string)
        crash_loop_back_off = optional(object({
          max_container_restart_period = optional(string)
        }))
        eviction_max_pod_grace_period_seconds = optional(number)
        eviction_minimum_reclaim = optional(object({
          imagefs_available   = optional(string)
          imagefs_inodes_free = optional(string)
          memory_available    = optional(string)
          nodefs_available    = optional(string)
          nodefs_inodes_free  = optional(string)
          pid_available       = optional(string)
        }))
        eviction_soft = optional(object({
          imagefs_available   = optional(string)
          imagefs_inodes_free = optional(string)
          memory_available    = optional(string)
          nodefs_available    = optional(string)
          nodefs_inodes_free  = optional(string)
          pid_available       = optional(string)
        }))
        eviction_soft_grace_period = optional(object({
          imagefs_available   = optional(string)
          imagefs_inodes_free = optional(string)
          memory_available    = optional(string)
          nodefs_available    = optional(string)
          nodefs_inodes_free  = optional(string)
          pid_available       = optional(string)
        }))
        image_gc_high_threshold_percent        = optional(number)
        image_gc_low_threshold_percent         = optional(number)
        image_maximum_gc_age                   = optional(string)
        image_minimum_gc_age                   = optional(string)
        insecure_kubelet_readonly_port_enabled = optional(string)
        max_parallel_image_pulls               = optional(number)
        memory_manager = optional(object({
          policy = optional(string)
        }))
        pod_pids_limit                              = optional(number)
        shutdown_grace_period_critical_pods_seconds = optional(number)
        shutdown_grace_period_seconds               = optional(number)
        single_process_oom_kill                     = optional(bool)
        topology_manager = optional(object({
          policy = optional(string)
          scope  = optional(string)
        }))
      }))
      labels = optional(map(string))
      linux_node_config = optional(object({
        accurate_time_config = optional(object({
          enable_ptp_kvm_time_sync = optional(bool)
        }))
        cgroup_mode = optional(string)
        custom_node_init = optional(object({
          init_script = optional(object({
            gcp_secret_manager_secret_uri = optional(string)
            gcs_generation                = optional(number)
            gcs_uri                       = optional(string)
          }))
        }))
        hugepages_config = optional(object({
          hugepage_size_1g = optional(number)
          hugepage_size_2m = optional(number)
        }))
        node_kernel_module_loading = optional(object({
          policy = optional(string)
        }))
        swap_config = optional(object({
          boot_disk_profile = optional(object({
            swap_size_gib     = optional(number)
            swap_size_percent = optional(number)
          }))
          dedicated_local_ssd_profile = optional(object({
            disk_count = optional(number)
          }))
          enabled = optional(bool)
          encryption_config = optional(object({
            disabled = optional(bool)
          }))
          ephemeral_local_ssd_profile = optional(object({
            swap_size_gib     = optional(number)
            swap_size_percent = optional(number)
          }))
        }))
        sysctls                      = optional(map(string))
        transparent_hugepage_defrag  = optional(string)
        transparent_hugepage_enabled = optional(string)
      }))
      local_nvme_ssd_block_config = optional(object({
        local_ssd_count = number
      }))
      local_ssd_count           = optional(number)
      local_ssd_encryption_mode = optional(string)
      logging_variant           = optional(string)
      machine_type              = optional(string)
      max_run_duration          = optional(string)
      metadata                  = optional(map(string))
      min_cpu_platform          = optional(string)
      node_group                = optional(string)
      node_image_config = optional(list(object({
        image         = optional(string)
        image_project = optional(string)
      })))
      oauth_scopes = optional(set(string))
      preemptible  = optional(bool)
      reservation_affinity = optional(object({
        consume_reservation_type = string
        key                      = optional(string)
        values                   = optional(set(string))
      }))
      resource_labels       = optional(map(string))
      resource_manager_tags = optional(map(string))
      sandbox_config = optional(object({
        type = string
      }))
      secondary_boot_disks = optional(list(object({
        disk_image = string
        mode       = optional(string)
      })))
      service_account = optional(string)
      shielded_instance_config = optional(object({
        enable_integrity_monitoring = optional(bool)
        enable_secure_boot          = optional(bool)
      }))
      sole_tenant_config = optional(object({
        min_node_cpus = optional(number)
        node_affinity = list(object({
          key      = string
          operator = string
          values   = list(string)
        }))
      }))
      spot          = optional(bool)
      storage_pools = optional(list(string))
      tags          = optional(list(string))
      taint = optional(list(object({
        effect = string
        key    = string
        value  = string
      })))
      taint_config = optional(object({
        architecture_taint_behavior = string
      }))
      windows_node_config = optional(object({
        osversion = optional(string)
      }))
      workload_metadata_config = optional(object({
        mode = string
      }))
    }))
    node_creation_config = optional(object({
      node_creation_mode = string
    }))
    node_pool = optional(list(object({
      autoscaling = optional(object({
        location_policy      = optional(string)
        max_node_count       = optional(number)
        min_node_count       = optional(number)
        total_max_node_count = optional(number)
        total_min_node_count = optional(number)
      }))
      ignore_node_count_changes = optional(bool)
      initial_node_count        = optional(number)
      maintenance_policy = optional(list(object({
        exclusion_until_end_of_support = optional(list(object({
          enabled = optional(bool)
        })))
      })))
      management = optional(object({
        auto_repair  = optional(bool)
        auto_upgrade = optional(bool)
      }))
      max_pods_per_node = optional(number)
      name              = optional(string)
      name_prefix       = optional(string)
      network_config = optional(object({
        accelerator_network_profile = optional(string)
        additional_node_network_configs = optional(list(object({
          network    = optional(string)
          subnetwork = optional(string)
        })))
        additional_pod_network_configs = optional(list(object({
          max_pods_per_node   = optional(number)
          secondary_pod_range = optional(string)
          subnetwork          = optional(string)
        })))
        create_pod_range     = optional(bool)
        enable_private_nodes = optional(bool)
        network_performance_config = optional(object({
          total_egress_bandwidth_tier = string
        }))
        pod_cidr_overprovision_config = optional(object({
          disabled = bool
        }))
        pod_ipv4_cidr_block = optional(string)
        pod_range           = optional(string)
        subnetwork          = optional(string)
      }))
      node_config = optional(object({
        advanced_machine_features = optional(object({
          enable_nested_virtualization = optional(bool)
          performance_monitoring_unit  = optional(string)
          threads_per_core             = number
        }))
        boot_disk = optional(object({
          disk_type              = optional(string)
          provisioned_iops       = optional(number)
          provisioned_throughput = optional(number)
          size_gb                = optional(number)
        }))
        boot_disk_kms_key = optional(string)
        confidential_nodes = optional(object({
          confidential_instance_type = optional(string)
          enabled                    = bool
        }))
        containerd_config = optional(object({
          private_registry_access_config = optional(object({
            certificate_authority_domain_config = optional(list(object({
              fqdns = list(string)
              gcp_secret_manager_certificate_config = object({
                secret_uri = string
              })
            })))
            enabled = bool
          }))
          registry_hosts = optional(list(object({
            hosts = optional(list(object({
              ca = optional(list(object({
                gcp_secret_manager_secret_uri = optional(string)
              })))
              capabilities = optional(list(string))
              client = optional(list(object({
                cert = object({
                  gcp_secret_manager_secret_uri = optional(string)
                })
                key = optional(object({
                  gcp_secret_manager_secret_uri = optional(string)
                }))
              })))
              dial_timeout = optional(string)
              header = optional(list(object({
                key   = string
                value = list(string)
              })))
              host          = string
              override_path = optional(bool)
            })))
            server = string
          })))
          writable_cgroups = optional(object({
            enabled = bool
          }))
        }))
        disk_size_gb                = optional(number)
        disk_type                   = optional(string)
        enable_confidential_storage = optional(bool)
        ephemeral_storage_local_ssd_config = optional(object({
          data_cache_count = optional(number)
          local_ssd_count  = number
        }))
        fast_socket = optional(object({
          enabled = bool
        }))
        flex_start = optional(bool)
        gcfs_config = optional(object({
          enabled = bool
        }))
        gpudirect_strategy = optional(string)
        guest_accelerator = optional(list(object({
          count = number
          gpu_driver_installation_config = optional(object({
            gpu_driver_version = string
          }))
          gpu_partition_size = optional(string)
          gpu_sharing_config = optional(object({
            gpu_sharing_strategy       = string
            max_shared_clients_per_gpu = number
          }))
          type = string
        })))
        gvnic = optional(object({
          enabled = bool
        }))
        image_type = optional(string)
        kubelet_config = optional(object({
          allowed_unsafe_sysctls  = optional(list(string))
          container_log_max_files = optional(number)
          container_log_max_size  = optional(string)
          cpu_cfs_quota           = optional(bool)
          cpu_cfs_quota_period    = optional(string)
          cpu_manager_policy      = optional(string)
          crash_loop_back_off = optional(object({
            max_container_restart_period = optional(string)
          }))
          eviction_max_pod_grace_period_seconds = optional(number)
          eviction_minimum_reclaim = optional(object({
            imagefs_available   = optional(string)
            imagefs_inodes_free = optional(string)
            memory_available    = optional(string)
            nodefs_available    = optional(string)
            nodefs_inodes_free  = optional(string)
            pid_available       = optional(string)
          }))
          eviction_soft = optional(object({
            imagefs_available   = optional(string)
            imagefs_inodes_free = optional(string)
            memory_available    = optional(string)
            nodefs_available    = optional(string)
            nodefs_inodes_free  = optional(string)
            pid_available       = optional(string)
          }))
          eviction_soft_grace_period = optional(object({
            imagefs_available   = optional(string)
            imagefs_inodes_free = optional(string)
            memory_available    = optional(string)
            nodefs_available    = optional(string)
            nodefs_inodes_free  = optional(string)
            pid_available       = optional(string)
          }))
          image_gc_high_threshold_percent        = optional(number)
          image_gc_low_threshold_percent         = optional(number)
          image_maximum_gc_age                   = optional(string)
          image_minimum_gc_age                   = optional(string)
          insecure_kubelet_readonly_port_enabled = optional(string)
          max_parallel_image_pulls               = optional(number)
          memory_manager = optional(object({
            policy = optional(string)
          }))
          pod_pids_limit                              = optional(number)
          shutdown_grace_period_critical_pods_seconds = optional(number)
          shutdown_grace_period_seconds               = optional(number)
          single_process_oom_kill                     = optional(bool)
          topology_manager = optional(object({
            policy = optional(string)
            scope  = optional(string)
          }))
        }))
        labels = optional(map(string))
        linux_node_config = optional(object({
          accurate_time_config = optional(object({
            enable_ptp_kvm_time_sync = optional(bool)
          }))
          cgroup_mode = optional(string)
          custom_node_init = optional(object({
            init_script = optional(object({
              gcp_secret_manager_secret_uri = optional(string)
              gcs_generation                = optional(number)
              gcs_uri                       = optional(string)
            }))
          }))
          hugepages_config = optional(object({
            hugepage_size_1g = optional(number)
            hugepage_size_2m = optional(number)
          }))
          node_kernel_module_loading = optional(object({
            policy = optional(string)
          }))
          swap_config = optional(object({
            boot_disk_profile = optional(object({
              swap_size_gib     = optional(number)
              swap_size_percent = optional(number)
            }))
            dedicated_local_ssd_profile = optional(object({
              disk_count = optional(number)
            }))
            enabled = optional(bool)
            encryption_config = optional(object({
              disabled = optional(bool)
            }))
            ephemeral_local_ssd_profile = optional(object({
              swap_size_gib     = optional(number)
              swap_size_percent = optional(number)
            }))
          }))
          sysctls                      = optional(map(string))
          transparent_hugepage_defrag  = optional(string)
          transparent_hugepage_enabled = optional(string)
        }))
        local_nvme_ssd_block_config = optional(object({
          local_ssd_count = number
        }))
        local_ssd_count           = optional(number)
        local_ssd_encryption_mode = optional(string)
        logging_variant           = optional(string)
        machine_type              = optional(string)
        max_run_duration          = optional(string)
        metadata                  = optional(map(string))
        min_cpu_platform          = optional(string)
        node_group                = optional(string)
        node_image_config = optional(list(object({
          image         = optional(string)
          image_project = optional(string)
        })))
        oauth_scopes = optional(set(string))
        preemptible  = optional(bool)
        reservation_affinity = optional(object({
          consume_reservation_type = string
          key                      = optional(string)
          values                   = optional(set(string))
        }))
        resource_labels       = optional(map(string))
        resource_manager_tags = optional(map(string))
        sandbox_config = optional(object({
          type = string
        }))
        secondary_boot_disks = optional(list(object({
          disk_image = string
          mode       = optional(string)
        })))
        service_account = optional(string)
        shielded_instance_config = optional(object({
          enable_integrity_monitoring = optional(bool)
          enable_secure_boot          = optional(bool)
        }))
        sole_tenant_config = optional(object({
          min_node_cpus = optional(number)
          node_affinity = list(object({
            key      = string
            operator = string
            values   = list(string)
          }))
        }))
        spot          = optional(bool)
        storage_pools = optional(list(string))
        tags          = optional(list(string))
        taint = optional(list(object({
          effect = string
          key    = string
          value  = string
        })))
        taint_config = optional(object({
          architecture_taint_behavior = string
        }))
        windows_node_config = optional(object({
          osversion = optional(string)
        }))
        workload_metadata_config = optional(object({
          mode = string
        }))
      }))
      node_count = optional(number)
      node_drain_config = optional(list(object({
        grace_termination_duration            = optional(string)
        pdb_timeout_duration                  = optional(string)
        respect_pdb_during_node_pool_deletion = optional(bool)
      })))
      node_locations = optional(set(string))
      placement_policy = optional(object({
        policy_name  = optional(string)
        tpu_topology = optional(string)
        type         = string
      }))
      queued_provisioning = optional(object({
        enabled = bool
      }))
      upgrade_settings = optional(object({
        blue_green_settings = optional(object({
          node_pool_soak_duration = optional(string)
          standard_rollout_policy = object({
            batch_node_count    = optional(number)
            batch_percentage    = optional(number)
            batch_soak_duration = optional(string)
          })
        }))
        max_surge       = optional(number)
        max_unavailable = optional(number)
        strategy        = optional(string)
      }))
      version = optional(string)
    })))
    node_pool_auto_config = optional(object({
      linux_node_config = optional(object({
        cgroup_mode = optional(string)
        node_kernel_module_loading = optional(object({
          policy = optional(string)
        }))
      }))
      network_tags = optional(object({
        tags = optional(list(string))
      }))
      node_kubelet_config = optional(object({
        insecure_kubelet_readonly_port_enabled = optional(string)
      }))
      resource_manager_tags = optional(map(string))
    }))
    node_pool_defaults = optional(object({
      node_config_defaults = optional(object({
        containerd_config = optional(object({
          private_registry_access_config = optional(object({
            certificate_authority_domain_config = optional(list(object({
              fqdns = list(string)
              gcp_secret_manager_certificate_config = object({
                secret_uri = string
              })
            })))
            enabled = bool
          }))
          registry_hosts = optional(list(object({
            hosts = optional(list(object({
              ca = optional(list(object({
                gcp_secret_manager_secret_uri = optional(string)
              })))
              capabilities = optional(list(string))
              client = optional(list(object({
                cert = object({
                  gcp_secret_manager_secret_uri = optional(string)
                })
                key = optional(object({
                  gcp_secret_manager_secret_uri = optional(string)
                }))
              })))
              dial_timeout = optional(string)
              header = optional(list(object({
                key   = string
                value = list(string)
              })))
              host          = string
              override_path = optional(bool)
            })))
            server = string
          })))
          writable_cgroups = optional(object({
            enabled = bool
          }))
        }))
        gcfs_config = optional(object({
          enabled = bool
        }))
        insecure_kubelet_readonly_port_enabled = optional(string)
        logging_variant                        = optional(string)
      }))
    }))
    notification_config = optional(object({
      pubsub = object({
        enabled = bool
        filter = optional(object({
          event_type = list(string)
        }))
        topic = optional(string)
      })
    }))
    pod_autoscaling = optional(object({
      hpa_profile = string
    }))
    private_cluster_config = optional(object({
      enable_private_endpoint = optional(bool)
      enable_private_nodes    = optional(bool)
      master_global_access_config = optional(object({
        enabled = bool
      }))
      master_ipv4_cidr_block      = optional(string)
      private_endpoint_subnetwork = optional(string)
    }))
    rbac_binding_config = optional(object({
      enable_insecure_binding_system_authenticated   = optional(bool)
      enable_insecure_binding_system_unauthenticated = optional(bool)
    }))
    release_channel = optional(object({
      channel = string
    }))
    resource_usage_export_config = optional(object({
      bigquery_destination = object({
        dataset_id = string
      })
      enable_network_egress_metering       = optional(bool)
      enable_resource_consumption_metering = optional(bool)
    }))
    rollback_safe_upgrade = optional(object({
      control_plane_soak_duration = optional(string)
    }))
    secret_manager_config = optional(object({
      enabled = bool
      rotation_config = optional(object({
        enabled           = bool
        rotation_interval = optional(string)
      }))
    }))
    secret_sync_config = optional(object({
      enabled = bool
      rotation_config = optional(object({
        enabled           = bool
        rotation_interval = optional(string)
      }))
    }))
    security_posture_config = optional(object({
      mode               = optional(string)
      vulnerability_mode = optional(string)
    }))
    service_external_ips_config = optional(object({
      enabled = bool
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    user_managed_keys_config = optional(object({
      aggregation_ca                    = optional(string)
      cluster_ca                        = optional(string)
      control_plane_disk_encryption_key = optional(string)
      etcd_api_ca                       = optional(string)
      etcd_peer_ca                      = optional(string)
      gkeops_etcd_backup_encryption_key = optional(string)
      service_account_signing_keys      = optional(set(string))
      service_account_verification_keys = optional(set(string))
    }))
    vertical_pod_autoscaling = optional(object({
      enabled = bool
    }))
    workload_identity_config = optional(object({
      workload_pool = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.addons_config == null || (v.addons_config.ray_operator_config == null || (length(v.addons_config.ray_operator_config) <= 3))
      )
    ])
    error_message = "Each ray_operator_config list must contain at most 3 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.maintenance_policy == null || (v.maintenance_policy.maintenance_exclusion == null || (length(v.maintenance_policy.maintenance_exclusion) <= 20))
      )
    ])
    error_message = "Each maintenance_exclusion list must contain at most 20 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.secondary_boot_disks == null || (length(v.node_config.secondary_boot_disks) <= 127))
      )
    ])
    error_message = "Each secondary_boot_disks list must contain at most 127 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.sole_tenant_config == null || (length(v.node_config.sole_tenant_config.node_affinity) >= 1))
      )
    ])
    error_message = "Each node_affinity list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool == null || alltrue([for item in v.node_pool : (item.node_config == null || (item.node_config.secondary_boot_disks == null || (length(item.node_config.secondary_boot_disks) <= 127)))])
      )
    ])
    error_message = "Each secondary_boot_disks list must contain at most 127 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool == null || alltrue([for item in v.node_pool : (item.node_config == null || (item.node_config.sole_tenant_config == null || (length(item.node_config.sole_tenant_config.node_affinity) >= 1)))])
      )
    ])
    error_message = "Each node_affinity list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.addons_config == null || (v.addons_config.cloudrun_config == null || (v.addons_config.cloudrun_config.load_balancer_type == null || (contains(["LOAD_BALANCER_TYPE_INTERNAL"], v.addons_config.cloudrun_config.load_balancer_type))))
      )
    ])
    error_message = "must be one of: \"LOAD_BALANCER_TYPE_INTERNAL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.resource_limits == null || alltrue([for item in v.cluster_autoscaling.resource_limits : (item.maximum >= 1)]))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.auto_provisioning_defaults == null || (v.cluster_autoscaling.auto_provisioning_defaults.disk_size == null || (v.cluster_autoscaling.auto_provisioning_defaults.disk_size >= 10)))
      )
    ])
    error_message = "must be at least 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.auto_provisioning_defaults == null || (v.cluster_autoscaling.auto_provisioning_defaults.disk_type == null || (contains(["pd-standard", "pd-ssd", "pd-balanced", "hyperdisk-balanced"], v.cluster_autoscaling.auto_provisioning_defaults.disk_type))))
      )
    ])
    error_message = "must be one of: \"pd-standard\", \"pd-ssd\", \"pd-balanced\", \"hyperdisk-balanced\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.auto_provisioning_defaults == null || (v.cluster_autoscaling.auto_provisioning_defaults.image_type == null || (contains(["COS_CONTAINERD", "COS", "UBUNTU_CONTAINERD", "UBUNTU"], v.cluster_autoscaling.auto_provisioning_defaults.image_type))))
      )
    ])
    error_message = "must be one of: \"COS_CONTAINERD\", \"COS\", \"UBUNTU_CONTAINERD\", \"UBUNTU\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.auto_provisioning_defaults == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.strategy == null || (contains(["NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED", "BLUE_GREEN", "SURGE"], v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.strategy)))))
      )
    ])
    error_message = "must be one of: \"NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED\", \"BLUE_GREEN\", \"SURGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.auto_provisioning_defaults == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.batch_percentage == null || (v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.batch_percentage >= 0.0 && v.cluster_autoscaling.auto_provisioning_defaults.upgrade_settings.blue_green_settings.standard_rollout_policy.batch_percentage <= 1.0))))))
      )
    ])
    error_message = "must be between 0.0 and 1.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.cluster_autoscaling == null || (v.cluster_autoscaling.autoscaling_profile == null || (contains(["BALANCED", "OPTIMIZE_UTILIZATION"], v.cluster_autoscaling.autoscaling_profile)))
      )
    ])
    error_message = "must be one of: \"BALANCED\", \"OPTIMIZE_UTILIZATION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.binary_authorization == null || (v.binary_authorization.evaluation_mode == null || (contains(["DISABLED", "PROJECT_SINGLETON_POLICY_ENFORCE"], v.binary_authorization.evaluation_mode)))
      )
    ])
    error_message = "must be one of: \"DISABLED\", \"PROJECT_SINGLETON_POLICY_ENFORCE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.autopilot_privileged_admission == null || (alltrue([for x in v.autopilot_privileged_admission : can(regex("^((?:gke|gs)://.+)?$", x))]))
      )
    ])
    error_message = "allowlist path must start with either gke:// or gs://"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.logging_config == null || (alltrue([for x in v.logging_config.enable_components : contains(["SYSTEM_COMPONENTS", "APISERVER", "CONTROLLER_MANAGER", "KCP_CONNECTION", "KCP_SSHD", "KCP_HPA", "KCP_VPA", "SCHEDULER", "WORKLOADS"], x)]))
      )
    ])
    error_message = "must be one of: \"SYSTEM_COMPONENTS\", \"APISERVER\", \"CONTROLLER_MANAGER\", \"KCP_CONNECTION\", \"KCP_SSHD\", \"KCP_HPA\", \"KCP_VPA\", \"SCHEDULER\", \"WORKLOADS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.logging_service == null || (contains(["logging.googleapis.com", "logging.googleapis.com/kubernetes", "none"], v.logging_service))
      )
    ])
    error_message = "must be one of: \"logging.googleapis.com\", \"logging.googleapis.com/kubernetes\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.desired_emulated_version == null || (can(regex("^[0-9]+\\.[0-9]+$", v.desired_emulated_version)))
      )
    ])
    error_message = "desired_emulated_version must be in major.minor format"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.maintenance_policy == null || (v.maintenance_policy.maintenance_exclusion == null || alltrue([for item in v.maintenance_policy.maintenance_exclusion : (item.exclusion_options == null || (item.exclusion_options.end_time_behavior == null || (contains(["UNTIL_END_OF_SUPPORT"], item.exclusion_options.end_time_behavior))))]))
      )
    ])
    error_message = "must be one of: \"UNTIL_END_OF_SUPPORT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.maintenance_policy == null || (v.maintenance_policy.maintenance_exclusion == null || alltrue([for item in v.maintenance_policy.maintenance_exclusion : (item.exclusion_options == null || (contains(["NO_UPGRADES", "NO_MINOR_UPGRADES", "NO_MINOR_OR_NODE_UPGRADES"], item.exclusion_options.scope)))]))
      )
    ])
    error_message = "must be one of: \"NO_UPGRADES\", \"NO_MINOR_UPGRADES\", \"NO_MINOR_OR_NODE_UPGRADES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.security_posture_config == null || (v.security_posture_config.mode == null || (contains(["DISABLED", "BASIC", "ENTERPRISE", "MODE_UNSPECIFIED"], v.security_posture_config.mode)))
      )
    ])
    error_message = "must be one of: \"DISABLED\", \"BASIC\", \"ENTERPRISE\", \"MODE_UNSPECIFIED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.security_posture_config == null || (v.security_posture_config.vulnerability_mode == null || (contains(["VULNERABILITY_DISABLED", "VULNERABILITY_BASIC", "VULNERABILITY_ENTERPRISE", "VULNERABILITY_MODE_UNSPECIFIED"], v.security_posture_config.vulnerability_mode)))
      )
    ])
    error_message = "must be one of: \"VULNERABILITY_DISABLED\", \"VULNERABILITY_BASIC\", \"VULNERABILITY_ENTERPRISE\", \"VULNERABILITY_MODE_UNSPECIFIED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.monitoring_config == null || (v.monitoring_config.managed_prometheus == null || (v.monitoring_config.managed_prometheus.auto_monitoring_config == null || (contains(["ALL", "NONE"], v.monitoring_config.managed_prometheus.auto_monitoring_config.scope))))
      )
    ])
    error_message = "must be one of: \"ALL\", \"NONE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.notification_config == null || (v.notification_config.pubsub.filter == null || (alltrue([for x in v.notification_config.pubsub.filter.event_type : contains(["UPGRADE_AVAILABLE_EVENT", "UPGRADE_EVENT", "SECURITY_BULLETIN_EVENT", "UPGRADE_INFO_EVENT"], x)])))
      )
    ])
    error_message = "must be one of: \"UPGRADE_AVAILABLE_EVENT\", \"UPGRADE_EVENT\", \"SECURITY_BULLETIN_EVENT\", \"UPGRADE_INFO_EVENT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.confidential_nodes == null || (v.confidential_nodes.confidential_instance_type == null || (contains(["SEV", "SEV_SNP", "TDX"], v.confidential_nodes.confidential_instance_type)))
      )
    ])
    error_message = "must be one of: \"SEV\", \"SEV_SNP\", \"TDX\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.monitoring_service == null || (contains(["monitoring.googleapis.com", "monitoring.googleapis.com/kubernetes", "none"], v.monitoring_service))
      )
    ])
    error_message = "must be one of: \"monitoring.googleapis.com\", \"monitoring.googleapis.com/kubernetes\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.network_policy == null || (v.network_policy.provider == null || (contains(["PROVIDER_UNSPECIFIED", "CALICO"], v.network_policy.provider)))
      )
    ])
    error_message = "must be one of: \"PROVIDER_UNSPECIFIED\", \"CALICO\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.taint_config == null || (contains(["ARCHITECTURE_TAINT_BEHAVIOR_UNSPECIFIED", "NONE", "ARM"], v.node_config.taint_config.architecture_taint_behavior)))
      )
    ])
    error_message = "must be one of: \"ARCHITECTURE_TAINT_BEHAVIOR_UNSPECIFIED\", \"NONE\", \"ARM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.disk_size_gb == null || (v.node_config.disk_size_gb >= 10))
      )
    ])
    error_message = "must be at least 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.boot_disk == null || (v.node_config.boot_disk.size_gb == null || (v.node_config.boot_disk.size_gb >= 10)))
      )
    ])
    error_message = "must be at least 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.guest_accelerator == null || alltrue([for item in v.node_config.guest_accelerator : (item.gpu_driver_installation_config == null || (contains(["GPU_DRIVER_VERSION_UNSPECIFIED", "INSTALLATION_DISABLED", "DEFAULT", "LATEST"], item.gpu_driver_installation_config.gpu_driver_version)))]))
      )
    ])
    error_message = "must be one of: \"GPU_DRIVER_VERSION_UNSPECIFIED\", \"INSTALLATION_DISABLED\", \"DEFAULT\", \"LATEST\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.local_ssd_count == null || (v.node_config.local_ssd_count >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.logging_variant == null || (contains(["DEFAULT", "MAX_THROUGHPUT"], v.node_config.logging_variant)))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"MAX_THROUGHPUT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.ephemeral_storage_local_ssd_config == null || (v.node_config.ephemeral_storage_local_ssd_config.local_ssd_count >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.ephemeral_storage_local_ssd_config == null || (v.node_config.ephemeral_storage_local_ssd_config.data_cache_count == null || (v.node_config.ephemeral_storage_local_ssd_config.data_cache_count >= 0)))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.local_nvme_ssd_block_config == null || (v.node_config.local_nvme_ssd_block_config.local_ssd_count >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.reservation_affinity == null || (contains(["UNSPECIFIED", "NO_RESERVATION", "ANY_RESERVATION", "SPECIFIC_RESERVATION", "ANY_RESERVATION_THEN_FAIL"], v.node_config.reservation_affinity.consume_reservation_type)))
      )
    ])
    error_message = "must be one of: \"UNSPECIFIED\", \"NO_RESERVATION\", \"ANY_RESERVATION\", \"SPECIFIC_RESERVATION\", \"ANY_RESERVATION_THEN_FAIL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.taint == null || alltrue([for item in v.node_config.taint : (contains(["NO_SCHEDULE", "PREFER_NO_SCHEDULE", "NO_EXECUTE"], item.effect))]))
      )
    ])
    error_message = "must be one of: \"NO_SCHEDULE\", \"PREFER_NO_SCHEDULE\", \"NO_EXECUTE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.workload_metadata_config == null || (contains(["MODE_UNSPECIFIED", "GCE_METADATA", "GKE_METADATA"], v.node_config.workload_metadata_config.mode)))
      )
    ])
    error_message = "must be one of: \"MODE_UNSPECIFIED\", \"GCE_METADATA\", \"GKE_METADATA\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.sandbox_config == null || (contains(["GVISOR"], v.node_config.sandbox_config.type)))
      )
    ])
    error_message = "must be one of: \"GVISOR\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.kubelet_config == null || (v.node_config.kubelet_config.cpu_manager_policy == null || (contains(["static", "none", ""], v.node_config.kubelet_config.cpu_manager_policy))))
      )
    ])
    error_message = "must be one of: \"static\", \"none\", \"\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.kubelet_config == null || (v.node_config.kubelet_config.memory_manager == null || (v.node_config.kubelet_config.memory_manager.policy == null || (contains(["None", "Static", ""], v.node_config.kubelet_config.memory_manager.policy)))))
      )
    ])
    error_message = "must be one of: \"None\", \"Static\", \"\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.kubelet_config == null || (v.node_config.kubelet_config.topology_manager == null || (v.node_config.kubelet_config.topology_manager.policy == null || (contains(["none", "restricted", "single-numa-node", "best-effort", ""], v.node_config.kubelet_config.topology_manager.policy)))))
      )
    ])
    error_message = "must be one of: \"none\", \"restricted\", \"single-numa-node\", \"best-effort\", \"\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.kubelet_config == null || (v.node_config.kubelet_config.topology_manager == null || (v.node_config.kubelet_config.topology_manager.scope == null || (contains(["container", "pod", ""], v.node_config.kubelet_config.topology_manager.scope)))))
      )
    ])
    error_message = "must be one of: \"container\", \"pod\", \"\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.kubelet_config == null || (v.node_config.kubelet_config.insecure_kubelet_readonly_port_enabled == null || (contains(["FALSE", "TRUE"], v.node_config.kubelet_config.insecure_kubelet_readonly_port_enabled))))
      )
    ])
    error_message = "must be one of: \"FALSE\", \"TRUE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.linux_node_config == null || (v.node_config.linux_node_config.cgroup_mode == null || (contains(["CGROUP_MODE_UNSPECIFIED", "CGROUP_MODE_V1", "CGROUP_MODE_V2"], v.node_config.linux_node_config.cgroup_mode))))
      )
    ])
    error_message = "must be one of: \"CGROUP_MODE_UNSPECIFIED\", \"CGROUP_MODE_V1\", \"CGROUP_MODE_V2\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.linux_node_config == null || (v.node_config.linux_node_config.node_kernel_module_loading == null || (v.node_config.linux_node_config.node_kernel_module_loading.policy == null || (contains(["POLICY_UNSPECIFIED", "ENFORCE_SIGNED_MODULES", "DO_NOT_ENFORCE_SIGNED_MODULES"], v.node_config.linux_node_config.node_kernel_module_loading.policy)))))
      )
    ])
    error_message = "must be one of: \"POLICY_UNSPECIFIED\", \"ENFORCE_SIGNED_MODULES\", \"DO_NOT_ENFORCE_SIGNED_MODULES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.linux_node_config == null || (v.node_config.linux_node_config.transparent_hugepage_enabled == null || (contains(["TRANSPARENT_HUGEPAGE_ENABLED_ALWAYS", "TRANSPARENT_HUGEPAGE_ENABLED_MADVISE", "TRANSPARENT_HUGEPAGE_ENABLED_NEVER", "TRANSPARENT_HUGEPAGE_ENABLED_UNSPECIFIED"], v.node_config.linux_node_config.transparent_hugepage_enabled))))
      )
    ])
    error_message = "must be one of: \"TRANSPARENT_HUGEPAGE_ENABLED_ALWAYS\", \"TRANSPARENT_HUGEPAGE_ENABLED_MADVISE\", \"TRANSPARENT_HUGEPAGE_ENABLED_NEVER\", \"TRANSPARENT_HUGEPAGE_ENABLED_UNSPECIFIED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.linux_node_config == null || (v.node_config.linux_node_config.transparent_hugepage_defrag == null || (contains(["TRANSPARENT_HUGEPAGE_DEFRAG_ALWAYS", "TRANSPARENT_HUGEPAGE_DEFRAG_DEFER", "TRANSPARENT_HUGEPAGE_DEFRAG_DEFER_WITH_MADVISE", "TRANSPARENT_HUGEPAGE_DEFRAG_MADVISE", "TRANSPARENT_HUGEPAGE_DEFRAG_NEVER", "TRANSPARENT_HUGEPAGE_DEFRAG_UNSPECIFIED"], v.node_config.linux_node_config.transparent_hugepage_defrag))))
      )
    ])
    error_message = "must be one of: \"TRANSPARENT_HUGEPAGE_DEFRAG_ALWAYS\", \"TRANSPARENT_HUGEPAGE_DEFRAG_DEFER\", \"TRANSPARENT_HUGEPAGE_DEFRAG_DEFER_WITH_MADVISE\", \"TRANSPARENT_HUGEPAGE_DEFRAG_MADVISE\", \"TRANSPARENT_HUGEPAGE_DEFRAG_NEVER\", \"TRANSPARENT_HUGEPAGE_DEFRAG_UNSPECIFIED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.windows_node_config == null || (v.node_config.windows_node_config.osversion == null || (contains(["OS_VERSION_UNSPECIFIED", "OS_VERSION_LTSC2019", "OS_VERSION_LTSC2022"], v.node_config.windows_node_config.osversion))))
      )
    ])
    error_message = "must be one of: \"OS_VERSION_UNSPECIFIED\", \"OS_VERSION_LTSC2019\", \"OS_VERSION_LTSC2022\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.sole_tenant_config == null || (alltrue([for item in v.node_config.sole_tenant_config.node_affinity : (contains(["IN", "NOT_IN"], item.operator))])))
      )
    ])
    error_message = "must be one of: \"IN\", \"NOT_IN\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.confidential_nodes == null || (v.node_config.confidential_nodes.confidential_instance_type == null || (contains(["SEV", "SEV_SNP", "TDX"], v.node_config.confidential_nodes.confidential_instance_type))))
      )
    ])
    error_message = "must be one of: \"SEV\", \"SEV_SNP\", \"TDX\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_config == null || (v.node_config.local_ssd_encryption_mode == null || (contains(["STANDARD_ENCRYPTION", "EPHEMERAL_KEY_ENCRYPTION"], v.node_config.local_ssd_encryption_mode)))
      )
    ])
    error_message = "must be one of: \"STANDARD_ENCRYPTION\", \"EPHEMERAL_KEY_ENCRYPTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool_defaults == null || (v.node_pool_defaults.node_config_defaults == null || (v.node_pool_defaults.node_config_defaults.insecure_kubelet_readonly_port_enabled == null || (contains(["FALSE", "TRUE"], v.node_pool_defaults.node_config_defaults.insecure_kubelet_readonly_port_enabled))))
      )
    ])
    error_message = "must be one of: \"FALSE\", \"TRUE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool_defaults == null || (v.node_pool_defaults.node_config_defaults == null || (v.node_pool_defaults.node_config_defaults.logging_variant == null || (contains(["DEFAULT", "MAX_THROUGHPUT"], v.node_pool_defaults.node_config_defaults.logging_variant))))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"MAX_THROUGHPUT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool_auto_config == null || (v.node_pool_auto_config.node_kubelet_config == null || (v.node_pool_auto_config.node_kubelet_config.insecure_kubelet_readonly_port_enabled == null || (contains(["FALSE", "TRUE"], v.node_pool_auto_config.node_kubelet_config.insecure_kubelet_readonly_port_enabled))))
      )
    ])
    error_message = "must be one of: \"FALSE\", \"TRUE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool_auto_config == null || (v.node_pool_auto_config.linux_node_config == null || (v.node_pool_auto_config.linux_node_config.cgroup_mode == null || (contains(["CGROUP_MODE_UNSPECIFIED", "CGROUP_MODE_V1", "CGROUP_MODE_V2"], v.node_pool_auto_config.linux_node_config.cgroup_mode))))
      )
    ])
    error_message = "must be one of: \"CGROUP_MODE_UNSPECIFIED\", \"CGROUP_MODE_V1\", \"CGROUP_MODE_V2\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_pool_auto_config == null || (v.node_pool_auto_config.linux_node_config == null || (v.node_pool_auto_config.linux_node_config.node_kernel_module_loading == null || (v.node_pool_auto_config.linux_node_config.node_kernel_module_loading.policy == null || (contains(["POLICY_UNSPECIFIED", "ENFORCE_SIGNED_MODULES", "DO_NOT_ENFORCE_SIGNED_MODULES"], v.node_pool_auto_config.linux_node_config.node_kernel_module_loading.policy)))))
      )
    ])
    error_message = "must be one of: \"POLICY_UNSPECIFIED\", \"ENFORCE_SIGNED_MODULES\", \"DO_NOT_ENFORCE_SIGNED_MODULES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.pod_autoscaling == null || (contains(["NONE", "PERFORMANCE"], v.pod_autoscaling.hpa_profile))
      )
    ])
    error_message = "must be one of: \"NONE\", \"PERFORMANCE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.ip_allocation_policy == null || (v.ip_allocation_policy.stack_type == null || (contains(["IPV4", "IPV4_IPV6"], v.ip_allocation_policy.stack_type)))
      )
    ])
    error_message = "must be one of: \"IPV4\", \"IPV4_IPV6\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.networking_mode == null || (contains(["VPC_NATIVE", "ROUTES"], v.networking_mode))
      )
    ])
    error_message = "must be one of: \"VPC_NATIVE\", \"ROUTES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.database_encryption == null || (contains(["ENCRYPTED", "ALL_OBJECTS_ENCRYPTION_ENABLED", "DECRYPTED"], v.database_encryption.state))
      )
    ])
    error_message = "must be one of: \"ENCRYPTED\", \"ALL_OBJECTS_ENCRYPTION_ENABLED\", \"DECRYPTED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.release_channel == null || (contains(["UNSPECIFIED", "RAPID", "REGULAR", "STABLE", "EXTENDED"], v.release_channel.channel))
      )
    ])
    error_message = "must be one of: \"UNSPECIFIED\", \"RAPID\", \"REGULAR\", \"STABLE\", \"EXTENDED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.datapath_provider == null || (contains(["DATAPATH_PROVIDER_UNSPECIFIED", "LEGACY_DATAPATH", "ADVANCED_DATAPATH"], v.datapath_provider))
      )
    ])
    error_message = "must be one of: \"DATAPATH_PROVIDER_UNSPECIFIED\", \"LEGACY_DATAPATH\", \"ADVANCED_DATAPATH\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.dns_config == null || (v.dns_config.cluster_dns == null || (contains(["PROVIDER_UNSPECIFIED", "PLATFORM_DEFAULT", "CLOUD_DNS", "KUBE_DNS"], v.dns_config.cluster_dns)))
      )
    ])
    error_message = "must be one of: \"PROVIDER_UNSPECIFIED\", \"PLATFORM_DEFAULT\", \"CLOUD_DNS\", \"KUBE_DNS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.dns_config == null || (v.dns_config.cluster_dns_scope == null || (contains(["DNS_SCOPE_UNSPECIFIED", "CLUSTER_SCOPE", "VPC_SCOPE"], v.dns_config.cluster_dns_scope)))
      )
    ])
    error_message = "must be one of: \"DNS_SCOPE_UNSPECIFIED\", \"CLUSTER_SCOPE\", \"VPC_SCOPE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.gateway_api_config == null || (contains(["CHANNEL_DISABLED", "CHANNEL_EXPERIMENTAL", "CHANNEL_STANDARD"], v.gateway_api_config.channel))
      )
    ])
    error_message = "must be one of: \"CHANNEL_DISABLED\", \"CHANNEL_EXPERIMENTAL\", \"CHANNEL_STANDARD\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.fleet == null || (v.fleet.membership_type == null || (contains(["LIGHTWEIGHT"], v.fleet.membership_type)))
      )
    ])
    error_message = "must be one of: \"LIGHTWEIGHT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.enterprise_config == null || (v.enterprise_config.desired_tier == null || (contains(["STANDARD", "ENTERPRISE"], v.enterprise_config.desired_tier)))
      )
    ])
    error_message = "must be one of: \"STANDARD\", \"ENTERPRISE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.in_transit_encryption_config == null || (contains(["IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED", "IN_TRANSIT_ENCRYPTION_DISABLED", "IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT"], v.in_transit_encryption_config))
      )
    ])
    error_message = "must be one of: \"IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED\", \"IN_TRANSIT_ENCRYPTION_DISABLED\", \"IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.anonymous_authentication_config == null || (contains(["ENABLED", "LIMITED"], v.anonymous_authentication_config.mode))
      )
    ])
    error_message = "must be one of: \"ENABLED\", \"LIMITED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.container_clusters : (
        v.node_creation_config == null || (contains(["VIA_KUBELET", "VIA_CONTROL_PLANE"], v.node_creation_config.node_creation_mode))
      )
    ])
    error_message = "must be one of: \"VIA_KUBELET\", \"VIA_CONTROL_PLANE\""
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

