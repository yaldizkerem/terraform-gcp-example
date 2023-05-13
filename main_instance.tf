module "instances" {
  source = "./modules/instance"

  for_each = toset(module.namer.names)

  subnetwork_id   = module.vpc.subnetwork.id
  name_prefix     = each.value
  machine_type    = var.machine_type
  boot_disk_image = var.boot_disk_image
  metadata        = var.metadata
}
