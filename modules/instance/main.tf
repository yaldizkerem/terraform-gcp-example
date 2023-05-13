resource "google_compute_instance" "instance" {
  name         = var.name_prefix
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }

  network_interface {
    subnetwork = var.subnetwork_id

    access_config {}
  }

  metadata = var.metadata
}
