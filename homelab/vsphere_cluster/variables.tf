variable "vsphere_user" {
  type    = string
  default = "administrator@homelab.local"
}

variable "vsphere_password" {
  type    = string
  default = "VMware1!"
}


variable "vsphere_server" {
  type    = string
  default = "vcsa.homelab.local"
}

variable "licenses" {
  type = object({
    vcenter_license = string
    esxi_license    = string
  })
  default = {
    vcenter_license = "00000-00000-00000-00000-00000"
    esxi_license    = "00000-00000-00000-00000-00000"
  }
}

variable "datacenter_name" {
  type    = string
  default = "Home Lab DC"
}

variable "compute_cluster_name" {
  type    = string
  default = "Home Lab Cluster"
}

variable "cluster_hosts" {
  type = list(object({
    hostname   = string
    username   = string
    password   = string
    thumbprint = string
    vds_nic    = string
  }))
  default = [
    {
      hostname   = "esxi.homelab.local"
      username   = "root"
      password   = "VMware1!"
      thumbprint = "aa:bb:cc:dd:ee:ff:aa:bb:cc:dd:ee:ff:aa:bb:cc:dd:ee:ff:aa:bb"
      vds_nic    = "vmnic1"
    }
  ]
}

variable "ha_heartbeat_datastore_policy" {
  type    = string
  default = "allFeasibleDs"
}

variable "vds_name" {
  type    = string
  default = "vds1"
}

variable "uplinks" {
  type    = list(string)
  default = ["uplink1", "uplink2"]
}

variable "active_uplinks" {
  type    = list(string)
  default = ["uplink1"]
}

variable "standby_uplinks" {
  type    = list(string)
  default = ["uplink2"]
}

variable "teaming_policy" {
  type    = string
  default = "loadbalance_ip"
}
