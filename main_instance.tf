module "instance" {
  source = "./modules/instance"

  count = var.instance_count

  subnetwork_id   = module.vpc.subnetwork.id
  instance_name   = "${var.instance_name}-${count.index}"
  machine_type    = var.machine_type
  boot_disk_image = var.boot_disk_image
  metadata        = var.metadata
}
