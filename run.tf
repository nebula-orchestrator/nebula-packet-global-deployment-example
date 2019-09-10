module "run_example" {
  source = "./nebula-packet-global-deployment-example"
  worker_count = 18
  worker_region_device = [
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
