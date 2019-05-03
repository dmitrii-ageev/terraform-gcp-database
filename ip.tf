// A private IP address for database peering
resource "google_compute_global_address" "this" {
  provider      = "google-beta"
  name          = "${local.ip_address_name}"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = "${var.network}"
}
