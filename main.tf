terraform {
required_providers {
aci = {
source = "ciscodevnet/aci"
}
}
}

variable "username" {
type        = string
}

variable "password" {
type        = string
}

variable "apic_url" {
type        = string
}

provider "aci" {
  # cisco-aci user name
  username = "${var.username}"
  # cisco-aci password
  password = "${var.password}"
  # cisco-aci url
  url      =  "${var.apic_url}"
  insecure = true
}

resource "aci_tenant" "terraform_tenant" {
  name        = "tenant_for_terraform"   
  description = "This tenant is created by the Terraform ACI provider"
}
