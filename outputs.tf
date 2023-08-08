output "instance_ips" {
  value = module.instance[*].ip
}