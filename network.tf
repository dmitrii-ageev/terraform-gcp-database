// A private VPC connection to the database instance
resource "google_service_networking_connection" "this" {
  provider                = "google-beta"
  network                 = "${var.network}"
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = ["${google_compute_global_address.this.name}"]
}
