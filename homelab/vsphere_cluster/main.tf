resource "vsphere_license" "licenseKey" {
  license_key = var.licenses.vcenter_license
}

resource "vsphere_datacenter" "datacenter" {
  name = var.datacenter_name
}

resource "vsphere_compute_cluster" "compute_cluster" {
  name                 = var.compute_cluster_name
  datacenter_id        = vsphere_datacenter.datacenter.moid
  drs_enabled          = true
  drs_automation_level = "partiallyAutomated"
  ha_enabled           = true
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
