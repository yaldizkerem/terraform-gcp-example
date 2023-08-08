resource "google_compute_instance" "instance" {
  #checkov:skip=CKV_GCP_30
  #checkov:skip=CKV_GCP_32
  #checkov:skip=CKV_GCP_38
  #checkov:skip=CKV_GCP_39
  #checkov:skip=CKV_GCP_40
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
