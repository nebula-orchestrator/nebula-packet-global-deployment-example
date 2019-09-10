module "run_example" {
  source = "./nebula-packet-global-deployment-example"
  worker_count = 5
  worker_region_device = [
    "ams1",
    "dfw2",
    "ewr1",
    "nrt1",
    "sjc1"
  ]
}
