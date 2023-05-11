variable "network_name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "subnetwork_name" {
  type = string
}

variable "ip_cidr_range" {
  type = string
}

variable "instance_name" {
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
