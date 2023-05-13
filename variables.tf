variable "name_prefix" {
  type = string
}

variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "ip_cidr_range" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "boot_disk_image" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "metadata" {
  type = map(string)
}

variable "ssh_allowed_source_ranges" {
  type = set(string)
}
