# Azure GUIDS
variable "subscription_id" {
  default = ""
}
variable "client_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}
variable "tenant_id" {
  default = ""
}

# Resource Group/Location
variable "location" {
  default = "East US"
}
variable "resource_group" {
  default = "tfappservice"
}
variable "application_type" {
  default = "toki-azure-project3-first-test"
}
# Tags
variable "tier" {
  default = "Test"
}
variable "deployment" {
  default = "Terraform"
}

