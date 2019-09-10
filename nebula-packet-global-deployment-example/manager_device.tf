resource "packet_device" "nebula-manager" {
  hostname         = "nebula-manager-01"
  plan             = var.server_size
  facilities       = [var.server_region_device]
  operating_system = "centos_7"
  billing_cycle    = "hourly"
  project_id       = packet_project.nebula_project.id
  user_data = templatefile("${path.module}/cloud_init/manager/user-data.tpl",  {})
}
