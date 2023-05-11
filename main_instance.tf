module "instance" {
  source = "./modules/instance"

  subnetwork_id   = module.vpc.subnetwork.id
  instance_name   = var.instance_name
  machine_type    = var.machine_type
  boot_disk_image = var.boot_disk_image
}