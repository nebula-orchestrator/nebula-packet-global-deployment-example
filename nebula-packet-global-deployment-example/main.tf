resource "null_resource" "wait_for_manager_to_start" {
  depends_on = [packet_device.nebula-manager]
  provisioner "local-exec" {
    command = templatefile("${path.module}/scripts/check_manager.sh.tpl",  {manager_host = packet_device.nebula-manager.access_public_ipv4})
    working_dir = "${path.module}/scripts"
  }
}
