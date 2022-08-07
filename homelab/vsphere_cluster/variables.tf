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
  }))
  default = [
    {
      hostname   = "esxi.homelab.local"
      username   = "root"
      password   = "VMware1!"
      thumbprint = "aa:bb:cc:dd:ee:ff:aa:bb:cc:dd:ee:ff:aa:bb:cc:dd:ee:ff:aa:bb"
    }
  ]
}
