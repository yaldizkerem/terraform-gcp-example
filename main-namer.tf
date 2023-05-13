module "namer" {
  source = "./modules/namer"

  name_prefix    = var.name_prefix
  starting_index = 0
  length         = var.instance_count
}
