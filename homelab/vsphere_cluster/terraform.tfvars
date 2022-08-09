vsphere_user     = "VSPHERE_USER"
vsphere_password = "VSPHERE_PASSWORD"
vsphere_server   = "VSPHERE_SERVER"
licenses = {
  vcenter_license = "00000-00000-00000-00000-00000",
  esxi_license    = "00000-00000-00000-00000-00000"
}
cluster_hosts = [
  {
    hostname   = "ESXI_HOSTNAME",
    username   = "ESXI_USERNAME",
    password   = "ESXI_PASSWORD",
    thumbprint = "ESXI_THUMBPRINT",
    vds_nic    = "ESXI_VDS_NIC"
  }
]
