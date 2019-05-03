resource "random_string" "password" {
  count            = "${var.password == "" ? 1 : 0}"
  length           = 16
  special          = true
  override_special = "/@\" "
}
