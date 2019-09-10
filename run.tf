module "run_example" {
  source = "./nebula-packet-global-deployment-example"
  worker_count = 6
  worker_region_device = [
    "ams1",
    "dfw2",
    "ewr1",
    "iad2",
    "nrt1",
    "sjc1"
  ]
}
