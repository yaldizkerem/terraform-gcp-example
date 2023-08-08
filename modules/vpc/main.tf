resource "google_compute_subnetwork" "subnetwork" {
  #checkov:skip=CKV_GCP_26
  #checkov:skip=CKV_GCP_74
  #checkov:skip=CKV_GCP_76
  name          = var.name_prefix
  ip_cidr_range = var.ip_cidr_range
  network       = google_compute_network.network.id
}

resource "google_compute_network" "network" {
  name                    = var.name_prefix
  auto_create_subnetworks = false
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "${var.name_prefix}-allow-ssh"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.ssh_allowed_source_ranges
}
