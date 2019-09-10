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
  default = 18
}

# a list of regions where devices will be deployed
variable "worker_region_device" {
  type = "list"
  default = [
    "yyz1",
    "iad2",
    "mrs1",
    "dfw1",
    "hkg1",
    "ams1",
    "dfw2",
    "syd1",
    "sea1",
    "sjc1",
    "nrt1",
    "ewr1",
    "atl1",
    "lax1",
    "sin1",
    "ord1",
    "iad1",
    "fra2"
  ]
}

# the server size you want
variable "worker_size" {
  type = "string"
  default = "c1.small.x86"
}
