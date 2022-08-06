variable "deploy_type" {
  type    = string
  default = "esxi"
}

variable "deployment_size" {
  description = "vcenter server size: tiny / small / medium / Large"
  type        = string
  default     = "tiny"
}

variable "esxi_hostname" {
  description = "target esxi hostname for deploying vcenter server"
  type        = string
  default     = "esxi01.homelab.local"
}

variable "esxi_username" {
  type    = string
  default = "root"
}

variable "esxi_password" {
  type    = string
  default = "VMware1!"
}

variable "vcenter_hostname" {
  type    = string
  default = "vcenter.homelab.local"
}

variable "vcenter_dns" {
  type    = string
  default = "dns.homelab.local"
}

variable "vcenter_ntp_server" {
  type    = string
  default = "ntp.homelab.local"
}

variable "vcenter_fqdn" {
  type    = string
  default = "vcenter.homelab.local"
}

variable "vcenter_ip" {
  type    = string
  default = "192.168.0.10"
}

variable "vcenter_prefix" {
  type    = string
  default = "24"
}

variable "vcenter_gateway" {
  type    = string
  default = "192.168.0.1"
}

variable "vcenter_root_password" {
  type    = string
  default = "VMware1!"
}

variable "binaries_path" {
  type    = string
  default = "/tmp/VMware.ova"
}

variable "vcsa_datastore" {
  type    = string
  default = "datastore1"
}

variable "vcsa_network" {
  type    = string
  default = "VM Network"
}

variable "vcenter_sso_domain" {
  type    = string
  default = "homelab.local"
}

variable "vcenter_sso_password" {
  type    = string
  default = "VMware1!"
}

