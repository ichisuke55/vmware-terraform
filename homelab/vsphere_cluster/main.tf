resource "vsphere_license" "licenseKey" {
  license_key = var.licenses.vcenter_license
}

resource "vsphere_datacenter" "datacenter" {
  name = var.datacenter_name
}

resource "vsphere_compute_cluster" "compute_cluster" {
  name                          = var.compute_cluster_name
  datacenter_id                 = vsphere_datacenter.datacenter.moid
  drs_enabled                   = true
  drs_automation_level          = "partiallyAutomated"
  ha_enabled                    = true
  ha_heartbeat_datastore_policy = var.ha_heartbeat_datastore_policy
}

resource "vsphere_host" "cluster_hosts" {
  for_each   = { for i in var.cluster_hosts : i.hostname => i }
  hostname   = each.value.hostname
  username   = each.value.username
  password   = each.value.password
  thumbprint = each.value.thumbprint
  license    = var.licenses.esxi_license
  cluster    = vsphere_compute_cluster.compute_cluster.id
}

resource "vsphere_distributed_virtual_switch" "vds" {
  name            = var.vds_name
  datacenter_id   = vsphere_datacenter.datacenter.moid
  uplinks         = var.uplinks
  active_uplinks  = var.active_uplinks
  standby_uplinks = var.standby_uplinks
  teaming_policy  = var.teaming_policy

  dynamic "host" {
    for_each = { for i in var.cluster_hosts : i.hostname => i }
    content {
      host_system_id = vsphere_host.cluster_hosts[host.key].id
      devices        = [host.value.vds_nic]
    }
  }
}
