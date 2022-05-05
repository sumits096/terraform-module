resource "google_compute_subnetwork" "ix-network-with-private-secondary-ip-ranges" {
  name          = "ix-test-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.ix-networks.id
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_network" "ix-networks" {
  name                    = "ix-test-network"
  auto_create_subnetworks = false
}
