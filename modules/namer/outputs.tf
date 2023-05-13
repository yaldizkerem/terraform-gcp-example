output "names" {
  value = [for i in range(var.starting_index, var.starting_index + var.length) : "${var.name_prefix}-${i}"]
}
