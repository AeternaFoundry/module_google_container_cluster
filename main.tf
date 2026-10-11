resource "google_container_cluster" "container_clusters" {
  for_each = var.container_clusters

  name                                     = each.value.name
  allow_net_admin                          = each.value.allow_net_admin
  autopilot_privileged_admission           = each.value.autopilot_privileged_admission
  cluster_ipv4_cidr                        = each.value.cluster_ipv4_cidr
  datapath_provider                        = each.value.datapath_provider
  dataplane_optimization_mode              = each.value.dataplane_optimization_mode
  default_max_pods_per_node                = each.value.default_max_pods_per_node
  deletion_policy                          = each.value.deletion_policy
  deletion_protection                      = each.value.deletion_protection
  description                              = each.value.description
  desired_emulated_version                 = each.value.desired_emulated_version
  disable_l4_lb_firewall_reconciliation    = each.value.disable_l4_lb_firewall_reconciliation
  enable_autopilot                         = each.value.enable_autopilot
  enable_cilium_clusterwide_network_policy = each.value.enable_cilium_clusterwide_network_policy
  enable_fqdn_network_policy               = each.value.enable_fqdn_network_policy
  enable_intranode_visibility              = each.value.enable_intranode_visibility
  enable_kubernetes_alpha                  = each.value.enable_kubernetes_alpha
  enable_l4_ilb_subsetting                 = each.value.enable_l4_ilb_subsetting
  enable_legacy_abac                       = each.value.enable_legacy_abac
  enable_multi_networking                  = each.value.enable_multi_networking
  enable_shielded_nodes                    = each.value.enable_shielded_nodes
  enable_tpu                               = each.value.enable_tpu
  ignore_node_count_changes                = each.value.ignore_node_count_changes
  in_transit_encryption_config             = each.value.in_transit_encryption_config
  initial_node_count                       = each.value.initial_node_count
  location                                 = each.value.location
  logging_service                          = each.value.logging_service
  min_master_version                       = each.value.min_master_version
  monitoring_service                       = each.value.monitoring_service
  network                                  = each.value.network
  networking_mode                          = each.value.networking_mode
  node_locations                           = each.value.node_locations
  node_version                             = each.value.node_version
  private_ipv6_google_access               = each.value.private_ipv6_google_access
  project                                  = each.value.project
  remove_default_node_pool                 = each.value.remove_default_node_pool
  resource_labels                          = each.value.resource_labels
  skip_node_pool_refresh                   = each.value.skip_node_pool_refresh
  subnetwork                               = each.value.subnetwork

  dynamic "addons_config" {
    for_each = each.value.addons_config != null ? [each.value.addons_config] : []
    content {
      dynamic "agent_sandbox_config" {
        for_each = addons_config.value.agent_sandbox_config != null ? [addons_config.value.agent_sandbox_config] : []
        content {
          enabled = agent_sandbox_config.value.enabled
        }
      }
      dynamic "cloudrun_config" {
        for_each = addons_config.value.cloudrun_config != null ? [addons_config.value.cloudrun_config] : []
        content {
          disabled           = cloudrun_config.value.disabled
          load_balancer_type = cloudrun_config.value.load_balancer_type
        }
      }
      dynamic "config_connector_config" {
        for_each = addons_config.value.config_connector_config != null ? [addons_config.value.config_connector_config] : []
        content {
          enabled = config_connector_config.value.enabled
        }
      }
      dynamic "dns_cache_config" {
        for_each = addons_config.value.dns_cache_config != null ? [addons_config.value.dns_cache_config] : []
        content {
          enabled = dns_cache_config.value.enabled
        }
      }
      dynamic "gce_persistent_disk_csi_driver_config" {
        for_each = addons_config.value.gce_persistent_disk_csi_driver_config != null ? [addons_config.value.gce_persistent_disk_csi_driver_config] : []
        content {
          enabled = gce_persistent_disk_csi_driver_config.value.enabled
        }
      }
      dynamic "gcp_filestore_csi_driver_config" {
        for_each = addons_config.value.gcp_filestore_csi_driver_config != null ? [addons_config.value.gcp_filestore_csi_driver_config] : []
        content {
          enabled = gcp_filestore_csi_driver_config.value.enabled
        }
      }
      dynamic "gcs_fuse_csi_driver_config" {
        for_each = addons_config.value.gcs_fuse_csi_driver_config != null ? [addons_config.value.gcs_fuse_csi_driver_config] : []
        content {
          enabled = gcs_fuse_csi_driver_config.value.enabled
        }
      }
      dynamic "gke_backup_agent_config" {
        for_each = addons_config.value.gke_backup_agent_config != null ? [addons_config.value.gke_backup_agent_config] : []
        content {
          enabled = gke_backup_agent_config.value.enabled
        }
      }
      dynamic "high_scale_checkpointing_config" {
        for_each = addons_config.value.high_scale_checkpointing_config != null ? [addons_config.value.high_scale_checkpointing_config] : []
        content {
          enabled = high_scale_checkpointing_config.value.enabled
        }
      }
      dynamic "horizontal_pod_autoscaling" {
        for_each = addons_config.value.horizontal_pod_autoscaling != null ? [addons_config.value.horizontal_pod_autoscaling] : []
        content {
          disabled = horizontal_pod_autoscaling.value.disabled
        }
      }
      dynamic "http_load_balancing" {
        for_each = addons_config.value.http_load_balancing != null ? [addons_config.value.http_load_balancing] : []
        content {
          disabled = http_load_balancing.value.disabled
        }
      }
      dynamic "lustre_csi_driver_config" {
        for_each = addons_config.value.lustre_csi_driver_config != null ? [addons_config.value.lustre_csi_driver_config] : []
        content {
          disable_multi_nic         = lustre_csi_driver_config.value.disable_multi_nic
          enable_legacy_lustre_port = lustre_csi_driver_config.value.enable_legacy_lustre_port
          enabled                   = lustre_csi_driver_config.value.enabled
        }
      }
      dynamic "network_policy_config" {
        for_each = addons_config.value.network_policy_config != null ? [addons_config.value.network_policy_config] : []
        content {
          disabled = network_policy_config.value.disabled
        }
      }
      dynamic "node_readiness_config" {
        for_each = addons_config.value.node_readiness_config != null ? [addons_config.value.node_readiness_config] : []
        content {
          enabled = node_readiness_config.value.enabled
        }
      }
      dynamic "parallelstore_csi_driver_config" {
        for_each = addons_config.value.parallelstore_csi_driver_config != null ? [addons_config.value.parallelstore_csi_driver_config] : []
        content {
          enabled = parallelstore_csi_driver_config.value.enabled
        }
      }
      dynamic "pod_snapshot_config" {
        for_each = addons_config.value.pod_snapshot_config != null ? [addons_config.value.pod_snapshot_config] : []
        content {
          enabled = pod_snapshot_config.value.enabled
        }
      }
      dynamic "ray_operator_config" {
        for_each = addons_config.value.ray_operator_config != null ? addons_config.value.ray_operator_config : []
        content {
          enabled = ray_operator_config.value.enabled
          dynamic "ray_cluster_logging_config" {
            for_each = ray_operator_config.value.ray_cluster_logging_config != null ? [ray_operator_config.value.ray_cluster_logging_config] : []
            content {
              enabled = ray_cluster_logging_config.value.enabled
            }
          }
          dynamic "ray_cluster_monitoring_config" {
            for_each = ray_operator_config.value.ray_cluster_monitoring_config != null ? [ray_operator_config.value.ray_cluster_monitoring_config] : []
            content {
              enabled = ray_cluster_monitoring_config.value.enabled
            }
          }
        }
      }
      dynamic "slice_controller_config" {
        for_each = addons_config.value.slice_controller_config != null ? [addons_config.value.slice_controller_config] : []
        content {
          enabled = slice_controller_config.value.enabled
        }
      }
      dynamic "slurm_operator_config" {
        for_each = addons_config.value.slurm_operator_config != null ? [addons_config.value.slurm_operator_config] : []
        content {
          enabled = slurm_operator_config.value.enabled
        }
      }
      dynamic "stateful_ha_config" {
        for_each = addons_config.value.stateful_ha_config != null ? [addons_config.value.stateful_ha_config] : []
        content {
          enabled = stateful_ha_config.value.enabled
        }
      }
    }
  }

  dynamic "anonymous_authentication_config" {
    for_each = each.value.anonymous_authentication_config != null ? [each.value.anonymous_authentication_config] : []
    content {
      mode = anonymous_authentication_config.value.mode
    }
  }

  dynamic "authenticator_groups_config" {
    for_each = each.value.authenticator_groups_config != null ? [each.value.authenticator_groups_config] : []
    content {
      security_group = authenticator_groups_config.value.security_group
    }
  }

  dynamic "autopilot_cluster_policy_config" {
    for_each = each.value.autopilot_cluster_policy_config != null ? [each.value.autopilot_cluster_policy_config] : []
    content {
      no_standard_node_pools  = autopilot_cluster_policy_config.value.no_standard_node_pools
      no_system_impersonation = autopilot_cluster_policy_config.value.no_system_impersonation
      no_system_mutation      = autopilot_cluster_policy_config.value.no_system_mutation
      no_unsafe_webhooks      = autopilot_cluster_policy_config.value.no_unsafe_webhooks
    }
  }

  dynamic "binary_authorization" {
    for_each = each.value.binary_authorization != null ? [each.value.binary_authorization] : []
    content {
      enabled         = binary_authorization.value.enabled
      evaluation_mode = binary_authorization.value.evaluation_mode
    }
  }

  dynamic "cluster_autoscaling" {
    for_each = each.value.cluster_autoscaling != null ? [each.value.cluster_autoscaling] : []
    content {
      dynamic "auto_provisioning_defaults" {
        for_each = cluster_autoscaling.value.auto_provisioning_defaults != null ? [cluster_autoscaling.value.auto_provisioning_defaults] : []
        content {
          boot_disk_kms_key = auto_provisioning_defaults.value.boot_disk_kms_key
          disk_size         = auto_provisioning_defaults.value.disk_size
          disk_type         = auto_provisioning_defaults.value.disk_type
          image_type        = auto_provisioning_defaults.value.image_type
          dynamic "management" {
            for_each = auto_provisioning_defaults.value.management != null ? [auto_provisioning_defaults.value.management] : []
            content {
              auto_repair  = management.value.auto_repair
              auto_upgrade = management.value.auto_upgrade
            }
          }
          min_cpu_platform = auto_provisioning_defaults.value.min_cpu_platform
          oauth_scopes     = auto_provisioning_defaults.value.oauth_scopes
          service_account  = auto_provisioning_defaults.value.service_account
          dynamic "shielded_instance_config" {
            for_each = auto_provisioning_defaults.value.shielded_instance_config != null ? [auto_provisioning_defaults.value.shielded_instance_config] : []
            content {
              enable_integrity_monitoring = shielded_instance_config.value.enable_integrity_monitoring
              enable_secure_boot          = shielded_instance_config.value.enable_secure_boot
            }
          }
          dynamic "upgrade_settings" {
            for_each = auto_provisioning_defaults.value.upgrade_settings != null ? [auto_provisioning_defaults.value.upgrade_settings] : []
            content {
              dynamic "blue_green_settings" {
                for_each = upgrade_settings.value.blue_green_settings != null ? [upgrade_settings.value.blue_green_settings] : []
                content {
                  node_pool_soak_duration = blue_green_settings.value.node_pool_soak_duration
                  dynamic "standard_rollout_policy" {
                    for_each = blue_green_settings.value.standard_rollout_policy != null ? [blue_green_settings.value.standard_rollout_policy] : []
                    content {
                      batch_node_count    = standard_rollout_policy.value.batch_node_count
                      batch_percentage    = standard_rollout_policy.value.batch_percentage
                      batch_soak_duration = standard_rollout_policy.value.batch_soak_duration
                    }
                  }
                }
              }
              max_surge       = upgrade_settings.value.max_surge
              max_unavailable = upgrade_settings.value.max_unavailable
              strategy        = upgrade_settings.value.strategy
            }
          }
        }
      }
      auto_provisioning_locations   = cluster_autoscaling.value.auto_provisioning_locations
      autoscaling_profile           = cluster_autoscaling.value.autoscaling_profile
      default_compute_class_enabled = cluster_autoscaling.value.default_compute_class_enabled
      enabled                       = cluster_autoscaling.value.enabled
      dynamic "resource_limits" {
        for_each = cluster_autoscaling.value.resource_limits != null ? cluster_autoscaling.value.resource_limits : []
        content {
          maximum       = resource_limits.value.maximum
          minimum       = resource_limits.value.minimum
          resource_type = resource_limits.value.resource_type
        }
      }
    }
  }

  dynamic "confidential_nodes" {
    for_each = each.value.confidential_nodes != null ? [each.value.confidential_nodes] : []
    content {
      confidential_instance_type = confidential_nodes.value.confidential_instance_type
      enabled                    = confidential_nodes.value.enabled
    }
  }

  dynamic "control_plane_endpoints_config" {
    for_each = each.value.control_plane_endpoints_config != null ? [each.value.control_plane_endpoints_config] : []
    content {
      dynamic "dns_endpoint_config" {
        for_each = control_plane_endpoints_config.value.dns_endpoint_config != null ? [control_plane_endpoints_config.value.dns_endpoint_config] : []
        content {
          allow_external_traffic    = dns_endpoint_config.value.allow_external_traffic
          enable_k8s_certs_via_dns  = dns_endpoint_config.value.enable_k8s_certs_via_dns
          enable_k8s_tokens_via_dns = dns_endpoint_config.value.enable_k8s_tokens_via_dns
          endpoint                  = dns_endpoint_config.value.endpoint
        }
      }
      dynamic "ip_endpoints_config" {
        for_each = control_plane_endpoints_config.value.ip_endpoints_config != null ? [control_plane_endpoints_config.value.ip_endpoints_config] : []
        content {
          enabled = ip_endpoints_config.value.enabled
        }
      }
    }
  }

  dynamic "cost_management_config" {
    for_each = each.value.cost_management_config != null ? [each.value.cost_management_config] : []
    content {
      enabled = cost_management_config.value.enabled
    }
  }

  dynamic "database_encryption" {
    for_each = each.value.database_encryption != null ? [each.value.database_encryption] : []
    content {
      key_name = database_encryption.value.key_name
      state    = database_encryption.value.state
    }
  }

  dynamic "default_snat_status" {
    for_each = each.value.default_snat_status != null ? [each.value.default_snat_status] : []
    content {
      disabled = default_snat_status.value.disabled
    }
  }

  dynamic "dns_config" {
    for_each = each.value.dns_config != null ? [each.value.dns_config] : []
    content {
      additive_vpc_scope_dns_domain = dns_config.value.additive_vpc_scope_dns_domain
      cluster_dns                   = dns_config.value.cluster_dns
      cluster_dns_domain            = dns_config.value.cluster_dns_domain
      cluster_dns_scope             = dns_config.value.cluster_dns_scope
    }
  }

  dynamic "enable_k8s_beta_apis" {
    for_each = each.value.enable_k8s_beta_apis != null ? [each.value.enable_k8s_beta_apis] : []
    content {
      enabled_apis = enable_k8s_beta_apis.value.enabled_apis
    }
  }

  dynamic "enterprise_config" {
    for_each = each.value.enterprise_config != null ? [each.value.enterprise_config] : []
    content {
      desired_tier = enterprise_config.value.desired_tier
    }
  }

  dynamic "fleet" {
    for_each = each.value.fleet != null ? [each.value.fleet] : []
    content {
      membership_type = fleet.value.membership_type
      project         = fleet.value.project
    }
  }

  dynamic "gateway_api_config" {
    for_each = each.value.gateway_api_config != null ? [each.value.gateway_api_config] : []
    content {
      channel = gateway_api_config.value.channel
    }
  }

  dynamic "gke_auto_upgrade_config" {
    for_each = each.value.gke_auto_upgrade_config != null ? [each.value.gke_auto_upgrade_config] : []
    content {
      patch_mode = gke_auto_upgrade_config.value.patch_mode
    }
  }

  dynamic "identity_service_config" {
    for_each = each.value.identity_service_config != null ? [each.value.identity_service_config] : []
    content {
      enabled = identity_service_config.value.enabled
    }
  }

  dynamic "ip_allocation_policy" {
    for_each = each.value.ip_allocation_policy != null ? [each.value.ip_allocation_policy] : []
    content {
      dynamic "additional_ip_ranges_config" {
        for_each = ip_allocation_policy.value.additional_ip_ranges_config != null ? ip_allocation_policy.value.additional_ip_ranges_config : []
        content {
          pod_ipv4_range_names = additional_ip_ranges_config.value.pod_ipv4_range_names
          status               = additional_ip_ranges_config.value.status
          subnetwork           = additional_ip_ranges_config.value.subnetwork
        }
      }
      dynamic "additional_pod_ranges_config" {
        for_each = ip_allocation_policy.value.additional_pod_ranges_config != null ? [ip_allocation_policy.value.additional_pod_ranges_config] : []
        content {
          pod_range_names = additional_pod_ranges_config.value.pod_range_names
        }
      }
      dynamic "auto_ipam_config" {
        for_each = ip_allocation_policy.value.auto_ipam_config != null ? [ip_allocation_policy.value.auto_ipam_config] : []
        content {
          enabled = auto_ipam_config.value.enabled
        }
      }
      cluster_ipv4_cidr_block      = ip_allocation_policy.value.cluster_ipv4_cidr_block
      cluster_secondary_range_name = ip_allocation_policy.value.cluster_secondary_range_name
      dynamic "network_tier_config" {
        for_each = ip_allocation_policy.value.network_tier_config != null ? [ip_allocation_policy.value.network_tier_config] : []
        content {
          network_tier = network_tier_config.value.network_tier
        }
      }
      dynamic "pod_cidr_overprovision_config" {
        for_each = ip_allocation_policy.value.pod_cidr_overprovision_config != null ? [ip_allocation_policy.value.pod_cidr_overprovision_config] : []
        content {
          disabled = pod_cidr_overprovision_config.value.disabled
        }
      }
      services_ipv4_cidr_block      = ip_allocation_policy.value.services_ipv4_cidr_block
      services_secondary_range_name = ip_allocation_policy.value.services_secondary_range_name
      stack_type                    = ip_allocation_policy.value.stack_type
    }
  }

  dynamic "logging_config" {
    for_each = each.value.logging_config != null ? [each.value.logging_config] : []
    content {
      enable_components = logging_config.value.enable_components
    }
  }

  dynamic "maintenance_policy" {
    for_each = each.value.maintenance_policy != null ? [each.value.maintenance_policy] : []
    content {
      dynamic "daily_maintenance_window" {
        for_each = maintenance_policy.value.daily_maintenance_window != null ? [maintenance_policy.value.daily_maintenance_window] : []
        content {
          start_time = daily_maintenance_window.value.start_time
        }
      }
      dynamic "disruption_budget" {
        for_each = maintenance_policy.value.disruption_budget != null ? [maintenance_policy.value.disruption_budget] : []
        content {
          minor_version_disruption_interval = disruption_budget.value.minor_version_disruption_interval
          patch_version_disruption_interval = disruption_budget.value.patch_version_disruption_interval
        }
      }
      dynamic "maintenance_exclusion" {
        for_each = maintenance_policy.value.maintenance_exclusion != null ? maintenance_policy.value.maintenance_exclusion : []
        content {
          end_time       = maintenance_exclusion.value.end_time
          exclusion_name = maintenance_exclusion.value.exclusion_name
          dynamic "exclusion_options" {
            for_each = maintenance_exclusion.value.exclusion_options != null ? [maintenance_exclusion.value.exclusion_options] : []
            content {
              end_time_behavior = exclusion_options.value.end_time_behavior
              scope             = exclusion_options.value.scope
            }
          }
          start_time = maintenance_exclusion.value.start_time
        }
      }
      dynamic "recurring_maintenance_window" {
        for_each = maintenance_policy.value.recurring_maintenance_window != null ? [maintenance_policy.value.recurring_maintenance_window] : []
        content {
          dynamic "delay_until" {
            for_each = recurring_maintenance_window.value.delay_until != null ? [recurring_maintenance_window.value.delay_until] : []
            content {
              day   = delay_until.value.day
              month = delay_until.value.month
              year  = delay_until.value.year
            }
          }
          recurrence      = recurring_maintenance_window.value.recurrence
          window_duration = recurring_maintenance_window.value.window_duration
          window_start_time {
            hours   = recurring_maintenance_window.value.window_start_time.hours
            minutes = recurring_maintenance_window.value.window_start_time.minutes
            seconds = recurring_maintenance_window.value.window_start_time.seconds
          }
        }
      }
      dynamic "recurring_window" {
        for_each = maintenance_policy.value.recurring_window != null ? [maintenance_policy.value.recurring_window] : []
        content {
          end_time   = recurring_window.value.end_time
          recurrence = recurring_window.value.recurrence
          start_time = recurring_window.value.start_time
        }
      }
    }
  }

  dynamic "master_auth" {
    for_each = each.value.master_auth != null ? [each.value.master_auth] : []
    content {
      client_certificate_config {
        issue_client_certificate = master_auth.value.client_certificate_config.issue_client_certificate
      }
    }
  }

  dynamic "master_authorized_networks_config" {
    for_each = each.value.master_authorized_networks_config != null ? [each.value.master_authorized_networks_config] : []
    content {
      dynamic "cidr_blocks" {
        for_each = master_authorized_networks_config.value.cidr_blocks != null ? master_authorized_networks_config.value.cidr_blocks : []
        content {
          cidr_block   = cidr_blocks.value.cidr_block
          display_name = cidr_blocks.value.display_name
        }
      }
      gcp_public_cidrs_access_enabled      = master_authorized_networks_config.value.gcp_public_cidrs_access_enabled
      private_endpoint_enforcement_enabled = master_authorized_networks_config.value.private_endpoint_enforcement_enabled
    }
  }

  dynamic "mesh_certificates" {
    for_each = each.value.mesh_certificates != null ? [each.value.mesh_certificates] : []
    content {
      enable_certificates = mesh_certificates.value.enable_certificates
    }
  }

  dynamic "monitoring_config" {
    for_each = each.value.monitoring_config != null ? [each.value.monitoring_config] : []
    content {
      dynamic "advanced_datapath_observability_config" {
        for_each = monitoring_config.value.advanced_datapath_observability_config != null ? [monitoring_config.value.advanced_datapath_observability_config] : []
        content {
          enable_metrics = advanced_datapath_observability_config.value.enable_metrics
          enable_relay   = advanced_datapath_observability_config.value.enable_relay
        }
      }
      enable_components = monitoring_config.value.enable_components
      dynamic "managed_prometheus" {
        for_each = monitoring_config.value.managed_prometheus != null ? [monitoring_config.value.managed_prometheus] : []
        content {
          dynamic "auto_monitoring_config" {
            for_each = managed_prometheus.value.auto_monitoring_config != null ? [managed_prometheus.value.auto_monitoring_config] : []
            content {
              scope = auto_monitoring_config.value.scope
            }
          }
          enabled = managed_prometheus.value.enabled
        }
      }
    }
  }

  dynamic "network_performance_config" {
    for_each = each.value.network_performance_config != null ? [each.value.network_performance_config] : []
    content {
      total_egress_bandwidth_tier = network_performance_config.value.total_egress_bandwidth_tier
    }
  }

  dynamic "network_policy" {
    for_each = each.value.network_policy != null ? [each.value.network_policy] : []
    content {
      enabled  = network_policy.value.enabled
      provider = network_policy.value.provider
    }
  }

  dynamic "node_config" {
    for_each = each.value.node_config != null ? [each.value.node_config] : []
    content {
      dynamic "advanced_machine_features" {
        for_each = node_config.value.advanced_machine_features != null ? [node_config.value.advanced_machine_features] : []
        content {
          enable_nested_virtualization = advanced_machine_features.value.enable_nested_virtualization
          performance_monitoring_unit  = advanced_machine_features.value.performance_monitoring_unit
          threads_per_core             = advanced_machine_features.value.threads_per_core
        }
      }
      dynamic "boot_disk" {
        for_each = node_config.value.boot_disk != null ? [node_config.value.boot_disk] : []
        content {
          disk_type              = boot_disk.value.disk_type
          provisioned_iops       = boot_disk.value.provisioned_iops
          provisioned_throughput = boot_disk.value.provisioned_throughput
          size_gb                = boot_disk.value.size_gb
        }
      }
      boot_disk_kms_key = node_config.value.boot_disk_kms_key
      dynamic "confidential_nodes" {
        for_each = node_config.value.confidential_nodes != null ? [node_config.value.confidential_nodes] : []
        content {
          confidential_instance_type = confidential_nodes.value.confidential_instance_type
          enabled                    = confidential_nodes.value.enabled
        }
      }
      dynamic "containerd_config" {
        for_each = node_config.value.containerd_config != null ? [node_config.value.containerd_config] : []
        content {
          dynamic "private_registry_access_config" {
            for_each = containerd_config.value.private_registry_access_config != null ? [containerd_config.value.private_registry_access_config] : []
            content {
              dynamic "certificate_authority_domain_config" {
                for_each = private_registry_access_config.value.certificate_authority_domain_config != null ? private_registry_access_config.value.certificate_authority_domain_config : []
                content {
                  fqdns = certificate_authority_domain_config.value.fqdns
                  gcp_secret_manager_certificate_config {
                    secret_uri = certificate_authority_domain_config.value.gcp_secret_manager_certificate_config.secret_uri
                  }
                }
              }
              enabled = private_registry_access_config.value.enabled
            }
          }
          dynamic "registry_hosts" {
            for_each = containerd_config.value.registry_hosts != null ? containerd_config.value.registry_hosts : []
            content {
              dynamic "hosts" {
                for_each = registry_hosts.value.hosts != null ? registry_hosts.value.hosts : []
                content {
                  dynamic "ca" {
                    for_each = hosts.value.ca != null ? hosts.value.ca : []
                    content {
                      gcp_secret_manager_secret_uri = ca.value.gcp_secret_manager_secret_uri
                    }
                  }
                  capabilities = hosts.value.capabilities
                  dynamic "client" {
                    for_each = hosts.value.client != null ? hosts.value.client : []
                    content {
                      cert {
                        gcp_secret_manager_secret_uri = client.value.cert.gcp_secret_manager_secret_uri
                      }
                      dynamic "key" {
                        for_each = client.value.key != null ? [client.value.key] : []
                        content {
                          gcp_secret_manager_secret_uri = key.value.gcp_secret_manager_secret_uri
                        }
                      }
                    }
                  }
                  dial_timeout = hosts.value.dial_timeout
                  dynamic "header" {
                    for_each = hosts.value.header != null ? hosts.value.header : []
                    content {
                      key   = header.value.key
                      value = header.value.value
                    }
                  }
                  host          = hosts.value.host
                  override_path = hosts.value.override_path
                }
              }
              server = registry_hosts.value.server
            }
          }
          dynamic "writable_cgroups" {
            for_each = containerd_config.value.writable_cgroups != null ? [containerd_config.value.writable_cgroups] : []
            content {
              enabled = writable_cgroups.value.enabled
            }
          }
        }
      }
      disk_size_gb                = node_config.value.disk_size_gb
      disk_type                   = node_config.value.disk_type
      enable_confidential_storage = node_config.value.enable_confidential_storage
      dynamic "ephemeral_storage_local_ssd_config" {
        for_each = node_config.value.ephemeral_storage_local_ssd_config != null ? [node_config.value.ephemeral_storage_local_ssd_config] : []
        content {
          data_cache_count = ephemeral_storage_local_ssd_config.value.data_cache_count
          local_ssd_count  = ephemeral_storage_local_ssd_config.value.local_ssd_count
        }
      }
      dynamic "fast_socket" {
        for_each = node_config.value.fast_socket != null ? [node_config.value.fast_socket] : []
        content {
          enabled = fast_socket.value.enabled
        }
      }
      flex_start = node_config.value.flex_start
      dynamic "gcfs_config" {
        for_each = node_config.value.gcfs_config != null ? [node_config.value.gcfs_config] : []
        content {
          enabled = gcfs_config.value.enabled
        }
      }
      gpudirect_strategy = node_config.value.gpudirect_strategy
      dynamic "guest_accelerator" {
        for_each = node_config.value.guest_accelerator != null ? node_config.value.guest_accelerator : []
        content {
          count = guest_accelerator.value.count
          dynamic "gpu_driver_installation_config" {
            for_each = guest_accelerator.value.gpu_driver_installation_config != null ? [guest_accelerator.value.gpu_driver_installation_config] : []
            content {
              gpu_driver_version = gpu_driver_installation_config.value.gpu_driver_version
            }
          }
          gpu_partition_size = guest_accelerator.value.gpu_partition_size
          dynamic "gpu_sharing_config" {
            for_each = guest_accelerator.value.gpu_sharing_config != null ? [guest_accelerator.value.gpu_sharing_config] : []
            content {
              gpu_sharing_strategy       = gpu_sharing_config.value.gpu_sharing_strategy
              max_shared_clients_per_gpu = gpu_sharing_config.value.max_shared_clients_per_gpu
            }
          }
          type = guest_accelerator.value.type
        }
      }
      dynamic "gvnic" {
        for_each = node_config.value.gvnic != null ? [node_config.value.gvnic] : []
        content {
          enabled = gvnic.value.enabled
        }
      }
      image_type = node_config.value.image_type
      dynamic "kubelet_config" {
        for_each = node_config.value.kubelet_config != null ? [node_config.value.kubelet_config] : []
        content {
          allowed_unsafe_sysctls  = kubelet_config.value.allowed_unsafe_sysctls
          container_log_max_files = kubelet_config.value.container_log_max_files
          container_log_max_size  = kubelet_config.value.container_log_max_size
          cpu_cfs_quota           = kubelet_config.value.cpu_cfs_quota
          cpu_cfs_quota_period    = kubelet_config.value.cpu_cfs_quota_period
          cpu_manager_policy      = kubelet_config.value.cpu_manager_policy
          dynamic "crash_loop_back_off" {
            for_each = kubelet_config.value.crash_loop_back_off != null ? [kubelet_config.value.crash_loop_back_off] : []
            content {
              max_container_restart_period = crash_loop_back_off.value.max_container_restart_period
            }
          }
          eviction_max_pod_grace_period_seconds = kubelet_config.value.eviction_max_pod_grace_period_seconds
          dynamic "eviction_minimum_reclaim" {
            for_each = kubelet_config.value.eviction_minimum_reclaim != null ? [kubelet_config.value.eviction_minimum_reclaim] : []
            content {
              imagefs_available   = eviction_minimum_reclaim.value.imagefs_available
              imagefs_inodes_free = eviction_minimum_reclaim.value.imagefs_inodes_free
              memory_available    = eviction_minimum_reclaim.value.memory_available
              nodefs_available    = eviction_minimum_reclaim.value.nodefs_available
              nodefs_inodes_free  = eviction_minimum_reclaim.value.nodefs_inodes_free
              pid_available       = eviction_minimum_reclaim.value.pid_available
            }
          }
          dynamic "eviction_soft" {
            for_each = kubelet_config.value.eviction_soft != null ? [kubelet_config.value.eviction_soft] : []
            content {
              imagefs_available   = eviction_soft.value.imagefs_available
              imagefs_inodes_free = eviction_soft.value.imagefs_inodes_free
              memory_available    = eviction_soft.value.memory_available
              nodefs_available    = eviction_soft.value.nodefs_available
              nodefs_inodes_free  = eviction_soft.value.nodefs_inodes_free
              pid_available       = eviction_soft.value.pid_available
            }
          }
          dynamic "eviction_soft_grace_period" {
            for_each = kubelet_config.value.eviction_soft_grace_period != null ? [kubelet_config.value.eviction_soft_grace_period] : []
            content {
              imagefs_available   = eviction_soft_grace_period.value.imagefs_available
              imagefs_inodes_free = eviction_soft_grace_period.value.imagefs_inodes_free
              memory_available    = eviction_soft_grace_period.value.memory_available
              nodefs_available    = eviction_soft_grace_period.value.nodefs_available
              nodefs_inodes_free  = eviction_soft_grace_period.value.nodefs_inodes_free
              pid_available       = eviction_soft_grace_period.value.pid_available
            }
          }
          image_gc_high_threshold_percent        = kubelet_config.value.image_gc_high_threshold_percent
          image_gc_low_threshold_percent         = kubelet_config.value.image_gc_low_threshold_percent
          image_maximum_gc_age                   = kubelet_config.value.image_maximum_gc_age
          image_minimum_gc_age                   = kubelet_config.value.image_minimum_gc_age
          insecure_kubelet_readonly_port_enabled = kubelet_config.value.insecure_kubelet_readonly_port_enabled
          max_parallel_image_pulls               = kubelet_config.value.max_parallel_image_pulls
          dynamic "memory_manager" {
            for_each = kubelet_config.value.memory_manager != null ? [kubelet_config.value.memory_manager] : []
            content {
              policy = memory_manager.value.policy
            }
          }
          pod_pids_limit                              = kubelet_config.value.pod_pids_limit
          shutdown_grace_period_critical_pods_seconds = kubelet_config.value.shutdown_grace_period_critical_pods_seconds
          shutdown_grace_period_seconds               = kubelet_config.value.shutdown_grace_period_seconds
          single_process_oom_kill                     = kubelet_config.value.single_process_oom_kill
          dynamic "topology_manager" {
            for_each = kubelet_config.value.topology_manager != null ? [kubelet_config.value.topology_manager] : []
            content {
              policy = topology_manager.value.policy
              scope  = topology_manager.value.scope
            }
          }
        }
      }
      labels = node_config.value.labels
      dynamic "linux_node_config" {
        for_each = node_config.value.linux_node_config != null ? [node_config.value.linux_node_config] : []
        content {
          dynamic "accurate_time_config" {
            for_each = linux_node_config.value.accurate_time_config != null ? [linux_node_config.value.accurate_time_config] : []
            content {
              enable_ptp_kvm_time_sync = accurate_time_config.value.enable_ptp_kvm_time_sync
            }
          }
          cgroup_mode = linux_node_config.value.cgroup_mode
          dynamic "custom_node_init" {
            for_each = linux_node_config.value.custom_node_init != null ? [linux_node_config.value.custom_node_init] : []
            content {
              dynamic "init_script" {
                for_each = custom_node_init.value.init_script != null ? [custom_node_init.value.init_script] : []
                content {
                  gcp_secret_manager_secret_uri = init_script.value.gcp_secret_manager_secret_uri
                  gcs_generation                = init_script.value.gcs_generation
                  gcs_uri                       = init_script.value.gcs_uri
                }
              }
            }
          }
          dynamic "hugepages_config" {
            for_each = linux_node_config.value.hugepages_config != null ? [linux_node_config.value.hugepages_config] : []
            content {
              hugepage_size_1g = hugepages_config.value.hugepage_size_1g
              hugepage_size_2m = hugepages_config.value.hugepage_size_2m
            }
          }
          dynamic "node_kernel_module_loading" {
            for_each = linux_node_config.value.node_kernel_module_loading != null ? [linux_node_config.value.node_kernel_module_loading] : []
            content {
              policy = node_kernel_module_loading.value.policy
            }
          }
          dynamic "swap_config" {
            for_each = linux_node_config.value.swap_config != null ? [linux_node_config.value.swap_config] : []
            content {
              dynamic "boot_disk_profile" {
                for_each = swap_config.value.boot_disk_profile != null ? [swap_config.value.boot_disk_profile] : []
                content {
                  swap_size_gib     = boot_disk_profile.value.swap_size_gib
                  swap_size_percent = boot_disk_profile.value.swap_size_percent
                }
              }
              dynamic "dedicated_local_ssd_profile" {
                for_each = swap_config.value.dedicated_local_ssd_profile != null ? [swap_config.value.dedicated_local_ssd_profile] : []
                content {
                  disk_count = dedicated_local_ssd_profile.value.disk_count
                }
              }
              enabled = swap_config.value.enabled
              dynamic "encryption_config" {
                for_each = swap_config.value.encryption_config != null ? [swap_config.value.encryption_config] : []
                content {
                  disabled = encryption_config.value.disabled
                }
              }
              dynamic "ephemeral_local_ssd_profile" {
                for_each = swap_config.value.ephemeral_local_ssd_profile != null ? [swap_config.value.ephemeral_local_ssd_profile] : []
                content {
                  swap_size_gib     = ephemeral_local_ssd_profile.value.swap_size_gib
                  swap_size_percent = ephemeral_local_ssd_profile.value.swap_size_percent
                }
              }
            }
          }
          sysctls                      = linux_node_config.value.sysctls
          transparent_hugepage_defrag  = linux_node_config.value.transparent_hugepage_defrag
          transparent_hugepage_enabled = linux_node_config.value.transparent_hugepage_enabled
        }
      }
      dynamic "local_nvme_ssd_block_config" {
        for_each = node_config.value.local_nvme_ssd_block_config != null ? [node_config.value.local_nvme_ssd_block_config] : []
        content {
          local_ssd_count = local_nvme_ssd_block_config.value.local_ssd_count
        }
      }
      local_ssd_count           = node_config.value.local_ssd_count
      local_ssd_encryption_mode = node_config.value.local_ssd_encryption_mode
      logging_variant           = node_config.value.logging_variant
      machine_type              = node_config.value.machine_type
      max_run_duration          = node_config.value.max_run_duration
      metadata                  = node_config.value.metadata
      min_cpu_platform          = node_config.value.min_cpu_platform
      node_group                = node_config.value.node_group
      dynamic "node_image_config" {
        for_each = node_config.value.node_image_config != null ? node_config.value.node_image_config : []
        content {
          image         = node_image_config.value.image
          image_project = node_image_config.value.image_project
        }
      }
      oauth_scopes = node_config.value.oauth_scopes
      preemptible  = node_config.value.preemptible
      dynamic "reservation_affinity" {
        for_each = node_config.value.reservation_affinity != null ? [node_config.value.reservation_affinity] : []
        content {
          consume_reservation_type = reservation_affinity.value.consume_reservation_type
          key                      = reservation_affinity.value.key
          values                   = reservation_affinity.value.values
        }
      }
      resource_labels       = node_config.value.resource_labels
      resource_manager_tags = node_config.value.resource_manager_tags
      dynamic "sandbox_config" {
        for_each = node_config.value.sandbox_config != null ? [node_config.value.sandbox_config] : []
        content {
          type = sandbox_config.value.type
        }
      }
      dynamic "secondary_boot_disks" {
        for_each = node_config.value.secondary_boot_disks != null ? node_config.value.secondary_boot_disks : []
        content {
          disk_image = secondary_boot_disks.value.disk_image
          mode       = secondary_boot_disks.value.mode
        }
      }
      service_account = node_config.value.service_account
      dynamic "shielded_instance_config" {
        for_each = node_config.value.shielded_instance_config != null ? [node_config.value.shielded_instance_config] : []
        content {
          enable_integrity_monitoring = shielded_instance_config.value.enable_integrity_monitoring
          enable_secure_boot          = shielded_instance_config.value.enable_secure_boot
        }
      }
      dynamic "sole_tenant_config" {
        for_each = node_config.value.sole_tenant_config != null ? [node_config.value.sole_tenant_config] : []
        content {
          min_node_cpus = sole_tenant_config.value.min_node_cpus
          dynamic "node_affinity" {
            for_each = sole_tenant_config.value.node_affinity
            content {
              key      = node_affinity.value.key
              operator = node_affinity.value.operator
              values   = node_affinity.value.values
            }
          }
        }
      }
      spot          = node_config.value.spot
      storage_pools = node_config.value.storage_pools
      tags          = node_config.value.tags
      dynamic "taint" {
        for_each = node_config.value.taint != null ? node_config.value.taint : []
        content {
          effect = taint.value.effect
          key    = taint.value.key
          value  = taint.value.value
        }
      }
      dynamic "taint_config" {
        for_each = node_config.value.taint_config != null ? [node_config.value.taint_config] : []
        content {
          architecture_taint_behavior = taint_config.value.architecture_taint_behavior
        }
      }
      dynamic "windows_node_config" {
        for_each = node_config.value.windows_node_config != null ? [node_config.value.windows_node_config] : []
        content {
          osversion = windows_node_config.value.osversion
        }
      }
      dynamic "workload_metadata_config" {
        for_each = node_config.value.workload_metadata_config != null ? [node_config.value.workload_metadata_config] : []
        content {
          mode = workload_metadata_config.value.mode
        }
      }
    }
  }

  dynamic "node_creation_config" {
    for_each = each.value.node_creation_config != null ? [each.value.node_creation_config] : []
    content {
      node_creation_mode = node_creation_config.value.node_creation_mode
    }
  }

  dynamic "node_pool" {
    for_each = each.value.node_pool != null ? each.value.node_pool : []
    content {
      dynamic "autoscaling" {
        for_each = node_pool.value.autoscaling != null ? [node_pool.value.autoscaling] : []
        content {
          location_policy      = autoscaling.value.location_policy
          max_node_count       = autoscaling.value.max_node_count
          min_node_count       = autoscaling.value.min_node_count
          total_max_node_count = autoscaling.value.total_max_node_count
          total_min_node_count = autoscaling.value.total_min_node_count
        }
      }
      ignore_node_count_changes = node_pool.value.ignore_node_count_changes
      initial_node_count        = node_pool.value.initial_node_count
      dynamic "maintenance_policy" {
        for_each = node_pool.value.maintenance_policy != null ? node_pool.value.maintenance_policy : []
        content {
          dynamic "exclusion_until_end_of_support" {
            for_each = maintenance_policy.value.exclusion_until_end_of_support != null ? maintenance_policy.value.exclusion_until_end_of_support : []
            content {
              enabled = exclusion_until_end_of_support.value.enabled
            }
          }
        }
      }
      dynamic "management" {
        for_each = node_pool.value.management != null ? [node_pool.value.management] : []
        content {
          auto_repair  = management.value.auto_repair
          auto_upgrade = management.value.auto_upgrade
        }
      }
      max_pods_per_node = node_pool.value.max_pods_per_node
      name              = node_pool.value.name
      name_prefix       = node_pool.value.name_prefix
      dynamic "network_config" {
        for_each = node_pool.value.network_config != null ? [node_pool.value.network_config] : []
        content {
          accelerator_network_profile = network_config.value.accelerator_network_profile
          dynamic "additional_node_network_configs" {
            for_each = network_config.value.additional_node_network_configs != null ? network_config.value.additional_node_network_configs : []
            content {
              network    = additional_node_network_configs.value.network
              subnetwork = additional_node_network_configs.value.subnetwork
            }
          }
          dynamic "additional_pod_network_configs" {
            for_each = network_config.value.additional_pod_network_configs != null ? network_config.value.additional_pod_network_configs : []
            content {
              max_pods_per_node   = additional_pod_network_configs.value.max_pods_per_node
              secondary_pod_range = additional_pod_network_configs.value.secondary_pod_range
              subnetwork          = additional_pod_network_configs.value.subnetwork
            }
          }
          create_pod_range     = network_config.value.create_pod_range
          enable_private_nodes = network_config.value.enable_private_nodes
          dynamic "network_performance_config" {
            for_each = network_config.value.network_performance_config != null ? [network_config.value.network_performance_config] : []
            content {
              total_egress_bandwidth_tier = network_performance_config.value.total_egress_bandwidth_tier
            }
          }
          dynamic "pod_cidr_overprovision_config" {
            for_each = network_config.value.pod_cidr_overprovision_config != null ? [network_config.value.pod_cidr_overprovision_config] : []
            content {
              disabled = pod_cidr_overprovision_config.value.disabled
            }
          }
          pod_ipv4_cidr_block = network_config.value.pod_ipv4_cidr_block
          pod_range           = network_config.value.pod_range
          subnetwork          = network_config.value.subnetwork
        }
      }
      dynamic "node_config" {
        for_each = node_pool.value.node_config != null ? [node_pool.value.node_config] : []
        content {
          dynamic "advanced_machine_features" {
            for_each = node_config.value.advanced_machine_features != null ? [node_config.value.advanced_machine_features] : []
            content {
              enable_nested_virtualization = advanced_machine_features.value.enable_nested_virtualization
              performance_monitoring_unit  = advanced_machine_features.value.performance_monitoring_unit
              threads_per_core             = advanced_machine_features.value.threads_per_core
            }
          }
          dynamic "boot_disk" {
            for_each = node_config.value.boot_disk != null ? [node_config.value.boot_disk] : []
            content {
              disk_type              = boot_disk.value.disk_type
              provisioned_iops       = boot_disk.value.provisioned_iops
              provisioned_throughput = boot_disk.value.provisioned_throughput
              size_gb                = boot_disk.value.size_gb
            }
          }
          boot_disk_kms_key = node_config.value.boot_disk_kms_key
          dynamic "confidential_nodes" {
            for_each = node_config.value.confidential_nodes != null ? [node_config.value.confidential_nodes] : []
            content {
              confidential_instance_type = confidential_nodes.value.confidential_instance_type
              enabled                    = confidential_nodes.value.enabled
            }
          }
          dynamic "containerd_config" {
            for_each = node_config.value.containerd_config != null ? [node_config.value.containerd_config] : []
            content {
              dynamic "private_registry_access_config" {
                for_each = containerd_config.value.private_registry_access_config != null ? [containerd_config.value.private_registry_access_config] : []
                content {
                  dynamic "certificate_authority_domain_config" {
                    for_each = private_registry_access_config.value.certificate_authority_domain_config != null ? private_registry_access_config.value.certificate_authority_domain_config : []
                    content {
                      fqdns = certificate_authority_domain_config.value.fqdns
                      gcp_secret_manager_certificate_config {
                        secret_uri = certificate_authority_domain_config.value.gcp_secret_manager_certificate_config.secret_uri
                      }
                    }
                  }
                  enabled = private_registry_access_config.value.enabled
                }
              }
              dynamic "registry_hosts" {
                for_each = containerd_config.value.registry_hosts != null ? containerd_config.value.registry_hosts : []
                content {
                  dynamic "hosts" {
                    for_each = registry_hosts.value.hosts != null ? registry_hosts.value.hosts : []
                    content {
                      dynamic "ca" {
                        for_each = hosts.value.ca != null ? hosts.value.ca : []
                        content {
                          gcp_secret_manager_secret_uri = ca.value.gcp_secret_manager_secret_uri
                        }
                      }
                      capabilities = hosts.value.capabilities
                      dynamic "client" {
                        for_each = hosts.value.client != null ? hosts.value.client : []
                        content {
                          cert {
                            gcp_secret_manager_secret_uri = client.value.cert.gcp_secret_manager_secret_uri
                          }
                          dynamic "key" {
                            for_each = client.value.key != null ? [client.value.key] : []
                            content {
                              gcp_secret_manager_secret_uri = key.value.gcp_secret_manager_secret_uri
                            }
                          }
                        }
                      }
                      dial_timeout = hosts.value.dial_timeout
                      dynamic "header" {
                        for_each = hosts.value.header != null ? hosts.value.header : []
                        content {
                          key   = header.value.key
                          value = header.value.value
                        }
                      }
                      host          = hosts.value.host
                      override_path = hosts.value.override_path
                    }
                  }
                  server = registry_hosts.value.server
                }
              }
              dynamic "writable_cgroups" {
                for_each = containerd_config.value.writable_cgroups != null ? [containerd_config.value.writable_cgroups] : []
                content {
                  enabled = writable_cgroups.value.enabled
                }
              }
            }
          }
          disk_size_gb                = node_config.value.disk_size_gb
          disk_type                   = node_config.value.disk_type
          enable_confidential_storage = node_config.value.enable_confidential_storage
          dynamic "ephemeral_storage_local_ssd_config" {
            for_each = node_config.value.ephemeral_storage_local_ssd_config != null ? [node_config.value.ephemeral_storage_local_ssd_config] : []
            content {
              data_cache_count = ephemeral_storage_local_ssd_config.value.data_cache_count
              local_ssd_count  = ephemeral_storage_local_ssd_config.value.local_ssd_count
            }
          }
          dynamic "fast_socket" {
            for_each = node_config.value.fast_socket != null ? [node_config.value.fast_socket] : []
            content {
              enabled = fast_socket.value.enabled
            }
          }
          flex_start = node_config.value.flex_start
          dynamic "gcfs_config" {
            for_each = node_config.value.gcfs_config != null ? [node_config.value.gcfs_config] : []
            content {
              enabled = gcfs_config.value.enabled
            }
          }
          gpudirect_strategy = node_config.value.gpudirect_strategy
          dynamic "guest_accelerator" {
            for_each = node_config.value.guest_accelerator != null ? node_config.value.guest_accelerator : []
            content {
              count = guest_accelerator.value.count
              dynamic "gpu_driver_installation_config" {
                for_each = guest_accelerator.value.gpu_driver_installation_config != null ? [guest_accelerator.value.gpu_driver_installation_config] : []
                content {
                  gpu_driver_version = gpu_driver_installation_config.value.gpu_driver_version
                }
              }
              gpu_partition_size = guest_accelerator.value.gpu_partition_size
              dynamic "gpu_sharing_config" {
                for_each = guest_accelerator.value.gpu_sharing_config != null ? [guest_accelerator.value.gpu_sharing_config] : []
                content {
                  gpu_sharing_strategy       = gpu_sharing_config.value.gpu_sharing_strategy
                  max_shared_clients_per_gpu = gpu_sharing_config.value.max_shared_clients_per_gpu
                }
              }
              type = guest_accelerator.value.type
            }
          }
          dynamic "gvnic" {
            for_each = node_config.value.gvnic != null ? [node_config.value.gvnic] : []
            content {
              enabled = gvnic.value.enabled
            }
          }
          image_type = node_config.value.image_type
          dynamic "kubelet_config" {
            for_each = node_config.value.kubelet_config != null ? [node_config.value.kubelet_config] : []
            content {
              allowed_unsafe_sysctls  = kubelet_config.value.allowed_unsafe_sysctls
              container_log_max_files = kubelet_config.value.container_log_max_files
              container_log_max_size  = kubelet_config.value.container_log_max_size
              cpu_cfs_quota           = kubelet_config.value.cpu_cfs_quota
              cpu_cfs_quota_period    = kubelet_config.value.cpu_cfs_quota_period
              cpu_manager_policy      = kubelet_config.value.cpu_manager_policy
              dynamic "crash_loop_back_off" {
                for_each = kubelet_config.value.crash_loop_back_off != null ? [kubelet_config.value.crash_loop_back_off] : []
                content {
                  max_container_restart_period = crash_loop_back_off.value.max_container_restart_period
                }
              }
              eviction_max_pod_grace_period_seconds = kubelet_config.value.eviction_max_pod_grace_period_seconds
              dynamic "eviction_minimum_reclaim" {
                for_each = kubelet_config.value.eviction_minimum_reclaim != null ? [kubelet_config.value.eviction_minimum_reclaim] : []
                content {
                  imagefs_available   = eviction_minimum_reclaim.value.imagefs_available
                  imagefs_inodes_free = eviction_minimum_reclaim.value.imagefs_inodes_free
                  memory_available    = eviction_minimum_reclaim.value.memory_available
                  nodefs_available    = eviction_minimum_reclaim.value.nodefs_available
                  nodefs_inodes_free  = eviction_minimum_reclaim.value.nodefs_inodes_free
                  pid_available       = eviction_minimum_reclaim.value.pid_available
                }
              }
              dynamic "eviction_soft" {
                for_each = kubelet_config.value.eviction_soft != null ? [kubelet_config.value.eviction_soft] : []
                content {
                  imagefs_available   = eviction_soft.value.imagefs_available
                  imagefs_inodes_free = eviction_soft.value.imagefs_inodes_free
                  memory_available    = eviction_soft.value.memory_available
                  nodefs_available    = eviction_soft.value.nodefs_available
                  nodefs_inodes_free  = eviction_soft.value.nodefs_inodes_free
                  pid_available       = eviction_soft.value.pid_available
                }
              }
              dynamic "eviction_soft_grace_period" {
                for_each = kubelet_config.value.eviction_soft_grace_period != null ? [kubelet_config.value.eviction_soft_grace_period] : []
                content {
                  imagefs_available   = eviction_soft_grace_period.value.imagefs_available
                  imagefs_inodes_free = eviction_soft_grace_period.value.imagefs_inodes_free
                  memory_available    = eviction_soft_grace_period.value.memory_available
                  nodefs_available    = eviction_soft_grace_period.value.nodefs_available
                  nodefs_inodes_free  = eviction_soft_grace_period.value.nodefs_inodes_free
                  pid_available       = eviction_soft_grace_period.value.pid_available
                }
              }
              image_gc_high_threshold_percent        = kubelet_config.value.image_gc_high_threshold_percent
              image_gc_low_threshold_percent         = kubelet_config.value.image_gc_low_threshold_percent
              image_maximum_gc_age                   = kubelet_config.value.image_maximum_gc_age
              image_minimum_gc_age                   = kubelet_config.value.image_minimum_gc_age
              insecure_kubelet_readonly_port_enabled = kubelet_config.value.insecure_kubelet_readonly_port_enabled
              max_parallel_image_pulls               = kubelet_config.value.max_parallel_image_pulls
              dynamic "memory_manager" {
                for_each = kubelet_config.value.memory_manager != null ? [kubelet_config.value.memory_manager] : []
                content {
                  policy = memory_manager.value.policy
                }
              }
              pod_pids_limit                              = kubelet_config.value.pod_pids_limit
              shutdown_grace_period_critical_pods_seconds = kubelet_config.value.shutdown_grace_period_critical_pods_seconds
              shutdown_grace_period_seconds               = kubelet_config.value.shutdown_grace_period_seconds
              single_process_oom_kill                     = kubelet_config.value.single_process_oom_kill
              dynamic "topology_manager" {
                for_each = kubelet_config.value.topology_manager != null ? [kubelet_config.value.topology_manager] : []
                content {
                  policy = topology_manager.value.policy
                  scope  = topology_manager.value.scope
                }
              }
            }
          }
          labels = node_config.value.labels
          dynamic "linux_node_config" {
            for_each = node_config.value.linux_node_config != null ? [node_config.value.linux_node_config] : []
            content {
              dynamic "accurate_time_config" {
                for_each = linux_node_config.value.accurate_time_config != null ? [linux_node_config.value.accurate_time_config] : []
                content {
                  enable_ptp_kvm_time_sync = accurate_time_config.value.enable_ptp_kvm_time_sync
                }
              }
              cgroup_mode = linux_node_config.value.cgroup_mode
              dynamic "custom_node_init" {
                for_each = linux_node_config.value.custom_node_init != null ? [linux_node_config.value.custom_node_init] : []
                content {
                  dynamic "init_script" {
                    for_each = custom_node_init.value.init_script != null ? [custom_node_init.value.init_script] : []
                    content {
                      gcp_secret_manager_secret_uri = init_script.value.gcp_secret_manager_secret_uri
                      gcs_generation                = init_script.value.gcs_generation
                      gcs_uri                       = init_script.value.gcs_uri
                    }
                  }
                }
              }
              dynamic "hugepages_config" {
                for_each = linux_node_config.value.hugepages_config != null ? [linux_node_config.value.hugepages_config] : []
                content {
                  hugepage_size_1g = hugepages_config.value.hugepage_size_1g
                  hugepage_size_2m = hugepages_config.value.hugepage_size_2m
                }
              }
              dynamic "node_kernel_module_loading" {
                for_each = linux_node_config.value.node_kernel_module_loading != null ? [linux_node_config.value.node_kernel_module_loading] : []
                content {
                  policy = node_kernel_module_loading.value.policy
                }
              }
              dynamic "swap_config" {
                for_each = linux_node_config.value.swap_config != null ? [linux_node_config.value.swap_config] : []
                content {
                  dynamic "boot_disk_profile" {
                    for_each = swap_config.value.boot_disk_profile != null ? [swap_config.value.boot_disk_profile] : []
                    content {
                      swap_size_gib     = boot_disk_profile.value.swap_size_gib
                      swap_size_percent = boot_disk_profile.value.swap_size_percent
                    }
                  }
                  dynamic "dedicated_local_ssd_profile" {
                    for_each = swap_config.value.dedicated_local_ssd_profile != null ? [swap_config.value.dedicated_local_ssd_profile] : []
                    content {
                      disk_count = dedicated_local_ssd_profile.value.disk_count
                    }
                  }
                  enabled = swap_config.value.enabled
                  dynamic "encryption_config" {
                    for_each = swap_config.value.encryption_config != null ? [swap_config.value.encryption_config] : []
                    content {
                      disabled = encryption_config.value.disabled
                    }
                  }
                  dynamic "ephemeral_local_ssd_profile" {
                    for_each = swap_config.value.ephemeral_local_ssd_profile != null ? [swap_config.value.ephemeral_local_ssd_profile] : []
                    content {
                      swap_size_gib     = ephemeral_local_ssd_profile.value.swap_size_gib
                      swap_size_percent = ephemeral_local_ssd_profile.value.swap_size_percent
                    }
                  }
                }
              }
              sysctls                      = linux_node_config.value.sysctls
              transparent_hugepage_defrag  = linux_node_config.value.transparent_hugepage_defrag
              transparent_hugepage_enabled = linux_node_config.value.transparent_hugepage_enabled
            }
          }
          dynamic "local_nvme_ssd_block_config" {
            for_each = node_config.value.local_nvme_ssd_block_config != null ? [node_config.value.local_nvme_ssd_block_config] : []
            content {
              local_ssd_count = local_nvme_ssd_block_config.value.local_ssd_count
            }
          }
          local_ssd_count           = node_config.value.local_ssd_count
          local_ssd_encryption_mode = node_config.value.local_ssd_encryption_mode
          logging_variant           = node_config.value.logging_variant
          machine_type              = node_config.value.machine_type
          max_run_duration          = node_config.value.max_run_duration
          metadata                  = node_config.value.metadata
          min_cpu_platform          = node_config.value.min_cpu_platform
          node_group                = node_config.value.node_group
          dynamic "node_image_config" {
            for_each = node_config.value.node_image_config != null ? node_config.value.node_image_config : []
            content {
              image         = node_image_config.value.image
              image_project = node_image_config.value.image_project
            }
          }
          oauth_scopes = node_config.value.oauth_scopes
          preemptible  = node_config.value.preemptible
          dynamic "reservation_affinity" {
            for_each = node_config.value.reservation_affinity != null ? [node_config.value.reservation_affinity] : []
            content {
              consume_reservation_type = reservation_affinity.value.consume_reservation_type
              key                      = reservation_affinity.value.key
              values                   = reservation_affinity.value.values
            }
          }
          resource_labels       = node_config.value.resource_labels
          resource_manager_tags = node_config.value.resource_manager_tags
          dynamic "sandbox_config" {
            for_each = node_config.value.sandbox_config != null ? [node_config.value.sandbox_config] : []
            content {
              type = sandbox_config.value.type
            }
          }
          dynamic "secondary_boot_disks" {
            for_each = node_config.value.secondary_boot_disks != null ? node_config.value.secondary_boot_disks : []
            content {
              disk_image = secondary_boot_disks.value.disk_image
              mode       = secondary_boot_disks.value.mode
            }
          }
          service_account = node_config.value.service_account
          dynamic "shielded_instance_config" {
            for_each = node_config.value.shielded_instance_config != null ? [node_config.value.shielded_instance_config] : []
            content {
              enable_integrity_monitoring = shielded_instance_config.value.enable_integrity_monitoring
              enable_secure_boot          = shielded_instance_config.value.enable_secure_boot
            }
          }
          dynamic "sole_tenant_config" {
            for_each = node_config.value.sole_tenant_config != null ? [node_config.value.sole_tenant_config] : []
            content {
              min_node_cpus = sole_tenant_config.value.min_node_cpus
              dynamic "node_affinity" {
                for_each = sole_tenant_config.value.node_affinity
                content {
                  key      = node_affinity.value.key
                  operator = node_affinity.value.operator
                  values   = node_affinity.value.values
                }
              }
            }
          }
          spot          = node_config.value.spot
          storage_pools = node_config.value.storage_pools
          tags          = node_config.value.tags
          dynamic "taint" {
            for_each = node_config.value.taint != null ? node_config.value.taint : []
            content {
              effect = taint.value.effect
              key    = taint.value.key
              value  = taint.value.value
            }
          }
          dynamic "taint_config" {
            for_each = node_config.value.taint_config != null ? [node_config.value.taint_config] : []
            content {
              architecture_taint_behavior = taint_config.value.architecture_taint_behavior
            }
          }
          dynamic "windows_node_config" {
            for_each = node_config.value.windows_node_config != null ? [node_config.value.windows_node_config] : []
            content {
              osversion = windows_node_config.value.osversion
            }
          }
          dynamic "workload_metadata_config" {
            for_each = node_config.value.workload_metadata_config != null ? [node_config.value.workload_metadata_config] : []
            content {
              mode = workload_metadata_config.value.mode
            }
          }
        }
      }
      node_count = node_pool.value.node_count
      dynamic "node_drain_config" {
        for_each = node_pool.value.node_drain_config != null ? node_pool.value.node_drain_config : []
        content {
          grace_termination_duration            = node_drain_config.value.grace_termination_duration
          pdb_timeout_duration                  = node_drain_config.value.pdb_timeout_duration
          respect_pdb_during_node_pool_deletion = node_drain_config.value.respect_pdb_during_node_pool_deletion
        }
      }
      node_locations = node_pool.value.node_locations
      dynamic "placement_policy" {
        for_each = node_pool.value.placement_policy != null ? [node_pool.value.placement_policy] : []
        content {
          policy_name  = placement_policy.value.policy_name
          tpu_topology = placement_policy.value.tpu_topology
          type         = placement_policy.value.type
        }
      }
      dynamic "queued_provisioning" {
        for_each = node_pool.value.queued_provisioning != null ? [node_pool.value.queued_provisioning] : []
        content {
          enabled = queued_provisioning.value.enabled
        }
      }
      dynamic "upgrade_settings" {
        for_each = node_pool.value.upgrade_settings != null ? [node_pool.value.upgrade_settings] : []
        content {
          dynamic "blue_green_settings" {
            for_each = upgrade_settings.value.blue_green_settings != null ? [upgrade_settings.value.blue_green_settings] : []
            content {
              node_pool_soak_duration = blue_green_settings.value.node_pool_soak_duration
              standard_rollout_policy {
                batch_node_count    = blue_green_settings.value.standard_rollout_policy.batch_node_count
                batch_percentage    = blue_green_settings.value.standard_rollout_policy.batch_percentage
                batch_soak_duration = blue_green_settings.value.standard_rollout_policy.batch_soak_duration
              }
            }
          }
          max_surge       = upgrade_settings.value.max_surge
          max_unavailable = upgrade_settings.value.max_unavailable
          strategy        = upgrade_settings.value.strategy
        }
      }
      version = node_pool.value.version
    }
  }

  dynamic "node_pool_auto_config" {
    for_each = each.value.node_pool_auto_config != null ? [each.value.node_pool_auto_config] : []
    content {
      dynamic "linux_node_config" {
        for_each = node_pool_auto_config.value.linux_node_config != null ? [node_pool_auto_config.value.linux_node_config] : []
        content {
          cgroup_mode = linux_node_config.value.cgroup_mode
          dynamic "node_kernel_module_loading" {
            for_each = linux_node_config.value.node_kernel_module_loading != null ? [linux_node_config.value.node_kernel_module_loading] : []
            content {
              policy = node_kernel_module_loading.value.policy
            }
          }
        }
      }
      dynamic "network_tags" {
        for_each = node_pool_auto_config.value.network_tags != null ? [node_pool_auto_config.value.network_tags] : []
        content {
          tags = network_tags.value.tags
        }
      }
      dynamic "node_kubelet_config" {
        for_each = node_pool_auto_config.value.node_kubelet_config != null ? [node_pool_auto_config.value.node_kubelet_config] : []
        content {
          insecure_kubelet_readonly_port_enabled = node_kubelet_config.value.insecure_kubelet_readonly_port_enabled
        }
      }
      resource_manager_tags = node_pool_auto_config.value.resource_manager_tags
    }
  }

  dynamic "node_pool_defaults" {
    for_each = each.value.node_pool_defaults != null ? [each.value.node_pool_defaults] : []
    content {
      dynamic "node_config_defaults" {
        for_each = node_pool_defaults.value.node_config_defaults != null ? [node_pool_defaults.value.node_config_defaults] : []
        content {
          dynamic "containerd_config" {
            for_each = node_config_defaults.value.containerd_config != null ? [node_config_defaults.value.containerd_config] : []
            content {
              dynamic "private_registry_access_config" {
                for_each = containerd_config.value.private_registry_access_config != null ? [containerd_config.value.private_registry_access_config] : []
                content {
                  dynamic "certificate_authority_domain_config" {
                    for_each = private_registry_access_config.value.certificate_authority_domain_config != null ? private_registry_access_config.value.certificate_authority_domain_config : []
                    content {
                      fqdns = certificate_authority_domain_config.value.fqdns
                      gcp_secret_manager_certificate_config {
                        secret_uri = certificate_authority_domain_config.value.gcp_secret_manager_certificate_config.secret_uri
                      }
                    }
                  }
                  enabled = private_registry_access_config.value.enabled
                }
              }
              dynamic "registry_hosts" {
                for_each = containerd_config.value.registry_hosts != null ? containerd_config.value.registry_hosts : []
                content {
                  dynamic "hosts" {
                    for_each = registry_hosts.value.hosts != null ? registry_hosts.value.hosts : []
                    content {
                      dynamic "ca" {
                        for_each = hosts.value.ca != null ? hosts.value.ca : []
                        content {
                          gcp_secret_manager_secret_uri = ca.value.gcp_secret_manager_secret_uri
                        }
                      }
                      capabilities = hosts.value.capabilities
                      dynamic "client" {
                        for_each = hosts.value.client != null ? hosts.value.client : []
                        content {
                          cert {
                            gcp_secret_manager_secret_uri = client.value.cert.gcp_secret_manager_secret_uri
                          }
                          dynamic "key" {
                            for_each = client.value.key != null ? [client.value.key] : []
                            content {
                              gcp_secret_manager_secret_uri = key.value.gcp_secret_manager_secret_uri
                            }
                          }
                        }
                      }
                      dial_timeout = hosts.value.dial_timeout
                      dynamic "header" {
                        for_each = hosts.value.header != null ? hosts.value.header : []
                        content {
                          key   = header.value.key
                          value = header.value.value
                        }
                      }
                      host          = hosts.value.host
                      override_path = hosts.value.override_path
                    }
                  }
                  server = registry_hosts.value.server
                }
              }
              dynamic "writable_cgroups" {
                for_each = containerd_config.value.writable_cgroups != null ? [containerd_config.value.writable_cgroups] : []
                content {
                  enabled = writable_cgroups.value.enabled
                }
              }
            }
          }
          dynamic "gcfs_config" {
            for_each = node_config_defaults.value.gcfs_config != null ? [node_config_defaults.value.gcfs_config] : []
            content {
              enabled = gcfs_config.value.enabled
            }
          }
          insecure_kubelet_readonly_port_enabled = node_config_defaults.value.insecure_kubelet_readonly_port_enabled
          logging_variant                        = node_config_defaults.value.logging_variant
        }
      }
    }
  }

  dynamic "notification_config" {
    for_each = each.value.notification_config != null ? [each.value.notification_config] : []
    content {
      pubsub {
        enabled = notification_config.value.pubsub.enabled
        dynamic "filter" {
          for_each = notification_config.value.pubsub.filter != null ? [notification_config.value.pubsub.filter] : []
          content {
            event_type = filter.value.event_type
          }
        }
        topic = notification_config.value.pubsub.topic
      }
    }
  }

  dynamic "pod_autoscaling" {
    for_each = each.value.pod_autoscaling != null ? [each.value.pod_autoscaling] : []
    content {
      hpa_profile = pod_autoscaling.value.hpa_profile
    }
  }

  dynamic "private_cluster_config" {
    for_each = each.value.private_cluster_config != null ? [each.value.private_cluster_config] : []
    content {
      enable_private_endpoint = private_cluster_config.value.enable_private_endpoint
      enable_private_nodes    = private_cluster_config.value.enable_private_nodes
      dynamic "master_global_access_config" {
        for_each = private_cluster_config.value.master_global_access_config != null ? [private_cluster_config.value.master_global_access_config] : []
        content {
          enabled = master_global_access_config.value.enabled
        }
      }
      master_ipv4_cidr_block      = private_cluster_config.value.master_ipv4_cidr_block
      private_endpoint_subnetwork = private_cluster_config.value.private_endpoint_subnetwork
    }
  }

  dynamic "rbac_binding_config" {
    for_each = each.value.rbac_binding_config != null ? [each.value.rbac_binding_config] : []
    content {
      enable_insecure_binding_system_authenticated   = rbac_binding_config.value.enable_insecure_binding_system_authenticated
      enable_insecure_binding_system_unauthenticated = rbac_binding_config.value.enable_insecure_binding_system_unauthenticated
    }
  }

  dynamic "release_channel" {
    for_each = each.value.release_channel != null ? [each.value.release_channel] : []
    content {
      channel = release_channel.value.channel
    }
  }

  dynamic "resource_usage_export_config" {
    for_each = each.value.resource_usage_export_config != null ? [each.value.resource_usage_export_config] : []
    content {
      bigquery_destination {
        dataset_id = resource_usage_export_config.value.bigquery_destination.dataset_id
      }
      enable_network_egress_metering       = resource_usage_export_config.value.enable_network_egress_metering
      enable_resource_consumption_metering = resource_usage_export_config.value.enable_resource_consumption_metering
    }
  }

  dynamic "rollback_safe_upgrade" {
    for_each = each.value.rollback_safe_upgrade != null ? [each.value.rollback_safe_upgrade] : []
    content {
      control_plane_soak_duration = rollback_safe_upgrade.value.control_plane_soak_duration
    }
  }

  dynamic "secret_manager_config" {
    for_each = each.value.secret_manager_config != null ? [each.value.secret_manager_config] : []
    content {
      enabled = secret_manager_config.value.enabled
      dynamic "rotation_config" {
        for_each = secret_manager_config.value.rotation_config != null ? [secret_manager_config.value.rotation_config] : []
        content {
          enabled           = rotation_config.value.enabled
          rotation_interval = rotation_config.value.rotation_interval
        }
      }
    }
  }

  dynamic "secret_sync_config" {
    for_each = each.value.secret_sync_config != null ? [each.value.secret_sync_config] : []
    content {
      enabled = secret_sync_config.value.enabled
      dynamic "rotation_config" {
        for_each = secret_sync_config.value.rotation_config != null ? [secret_sync_config.value.rotation_config] : []
        content {
          enabled           = rotation_config.value.enabled
          rotation_interval = rotation_config.value.rotation_interval
        }
      }
    }
  }

  dynamic "security_posture_config" {
    for_each = each.value.security_posture_config != null ? [each.value.security_posture_config] : []
    content {
      mode               = security_posture_config.value.mode
      vulnerability_mode = security_posture_config.value.vulnerability_mode
    }
  }

  dynamic "service_external_ips_config" {
    for_each = each.value.service_external_ips_config != null ? [each.value.service_external_ips_config] : []
    content {
      enabled = service_external_ips_config.value.enabled
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }

  dynamic "user_managed_keys_config" {
    for_each = each.value.user_managed_keys_config != null ? [each.value.user_managed_keys_config] : []
    content {
      aggregation_ca                    = user_managed_keys_config.value.aggregation_ca
      cluster_ca                        = user_managed_keys_config.value.cluster_ca
      control_plane_disk_encryption_key = user_managed_keys_config.value.control_plane_disk_encryption_key
      etcd_api_ca                       = user_managed_keys_config.value.etcd_api_ca
      etcd_peer_ca                      = user_managed_keys_config.value.etcd_peer_ca
      gkeops_etcd_backup_encryption_key = user_managed_keys_config.value.gkeops_etcd_backup_encryption_key
      service_account_signing_keys      = user_managed_keys_config.value.service_account_signing_keys
      service_account_verification_keys = user_managed_keys_config.value.service_account_verification_keys
    }
  }

  dynamic "vertical_pod_autoscaling" {
    for_each = each.value.vertical_pod_autoscaling != null ? [each.value.vertical_pod_autoscaling] : []
    content {
      enabled = vertical_pod_autoscaling.value.enabled
    }
  }

  dynamic "workload_identity_config" {
    for_each = each.value.workload_identity_config != null ? [each.value.workload_identity_config] : []
    content {
      workload_pool = workload_identity_config.value.workload_pool
    }
  }
}

