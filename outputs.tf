output "instance_ips" {
  value = { for instance in module.instances : instance.name => instance.ip }
}
