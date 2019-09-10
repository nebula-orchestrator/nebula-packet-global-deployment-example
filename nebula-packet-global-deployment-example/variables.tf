# the server size you want
variable "server_size" {
  type = "string"
  default = "c1.small.x86"
}

# the region where server devices will be deployed
variable "server_region_device" {
  type = "string"
  default = "ams1"
}

# the count of how many servers you want
variable "worker_count" {
  type = "string"
  default = 5
}

# a list of regions where devices will be deployed
variable "worker_region_device" {
  type = "list"
  default = [
    "ams1",
    "dfw2",
    "ewr1",
    "nrt1",
    "sjc1"
  ]
}

# the server size you want
variable "worker_size" {
  type = "string"
  default = "c1.small.x86"
}
