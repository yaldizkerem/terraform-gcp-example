module "vpc" {
  source                    = "./modules/vpc"
  name_prefix               = var.name_prefix
  ip_cidr_range             = var.ip_cidr_range
  ssh_allowed_source_ranges = var.ssh_allowed_source_ranges
}
