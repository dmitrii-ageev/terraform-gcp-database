// A private IP address for database peering
/* Please note:
   In some cases, for example when an IP address was recreated,
   GCP API reports that it can't remap the address (range).

   To fix this error, execute the command below from the console:

gcloud beta services vpc-peerings update \
    --service=servicenetworking.googleapis.com \
    --ranges=<PUT YOUR IP ADDRESS NAME HERE> \
    --network=common-gke-us-us-central1-network \
    --project=unimarket-terraform-dev \
    --force
*/
resource "google_compute_global_address" "this" {
  provider      = "google-beta"
  name          = "${local.ip_address_name}"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = "${var.network}"
}
