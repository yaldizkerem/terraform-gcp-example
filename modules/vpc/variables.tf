variable "name_prefix" {
  type = string
}

variable "ip_cidr_range" {
  type = string
}

variable "ssh_allowed_source_ranges" {
  type = set(string)
}
