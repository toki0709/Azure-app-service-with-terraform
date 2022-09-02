# Resource Group/Location
variable "application_type" {
  default = "toki-azure-project3-first-test"
}
variable "resource_type" {
  default = "AppService"
}
variable "location" {
  default = "East US"
}
variable "resource_group" {
  default = "tfappservice"
}

# Tags
variable "tags" {
  type = map(string)
}
