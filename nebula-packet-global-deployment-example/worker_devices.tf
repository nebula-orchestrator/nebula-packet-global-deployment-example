resource "packet_device" "nebula-worker" {
  count  = var.worker_count
  depends_on = [null_resource.wait_for_manager_to_start]
  hostname         = "nebula-worker-0${count.index+1}"
  plan             = var.worker_size
  facilities       = [var.worker_region_device[count.index]]
  operating_system = "rancher"
  billing_cycle    = "hourly"
  project_id       = packet_project.nebula_project.id
  user_data = templatefile("${path.module}/cloud_init/worker/user-data.tpl",  {manager_host = packet_device.nebula-manager.access_public_ipv4})
}
