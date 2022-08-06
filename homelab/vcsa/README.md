# vCenter Server Install terraform
This terraform is to install vCenter Server Appliance at ESXi Server.

## Preparation
- Server which is already installed ESXi
  - Name resolution must be possible from your client
- terraform.tfvars
  - overwrite variables at terraform.tfvars your environment parameters

## Execute
```
terraform init
terraform plan
terraform apply
```
  
Installation takes about 20 minutes to complete.
  
