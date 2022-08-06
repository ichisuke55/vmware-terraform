module "deploy-vcenter" {
  source = "kalenarndt/vcsa-deploy/vsphere"

  deploy_type     = var.deploy_type
  deployment_size = var.deployment_size

  esxi_hostname = var.esxi_hostname
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password

  vcenter_hostname      = var.vcenter_hostname
  vcenter_dns           = var.vcenter_dns
  vcenter_ntp_server    = var.vcenter_ntp_server
  vcenter_fqdn          = var.vcenter_fqdn
  vcenter_ip            = var.vcenter_ip
  vcenter_prefix        = var.vcenter_prefix
  vcenter_gateway       = var.vcenter_gateway
  vcenter_root_password = var.vcenter_root_password

  binaries_path = var.binaries_path

  vcsa_datastore = var.vcsa_datastore
  vcsa_network   = var.vcsa_network

  vcenter_sso_domain   = var.vcenter_sso_domain
  vcenter_sso_password = var.vcenter_sso_password
}

