variable "network_name" {
  type = string
}

variable "subnetwork_name" {
  type = string
}

variable "ip_cidr_range" {
  type = string
}

variable "ssh_allowed_source_ranges" {
  type = set(string)
}
