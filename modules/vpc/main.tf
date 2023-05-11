resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.ip_cidr_range
  network       = google_compute_network.network.id
}

resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}
