variable "name_prefix" {
  type = string
}

variable "subnetwork_id" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "boot_disk_image" {
  type = string
}

variable "metadata" {
  type = map(string)
}
