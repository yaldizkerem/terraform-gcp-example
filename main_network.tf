module "vpc" {
  source                    = "./modules/vpc"
  network_name              = var.network_name
  subnetwork_name           = var.subnetwork_name
  ip_cidr_range             = var.ip_cidr_range
  ssh_allowed_source_ranges = var.ssh_allowed_source_ranges
}
