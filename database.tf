resource "google_sql_database_instance" "this" {
  count            = "${local.create_instance}"
  name             = "${var.instance_name}"
  database_version = "${var.instance_version}"

  depends_on = ["google_service_networking_connection.this"]

  timeouts {
    create = "10m"
    update = "10m"
    delete = "10m"
  }

  settings {
    tier              = "db-custom-1-4096"
    availability_type = "${var.instance_availability_type}"

    backup_configuration {
      enabled = true
    }

    maintenance_window {
      day          = 7
      hour         = 16
      update_track = "canary"
    }

    ip_configuration {
      // Disable public IPv4 access
      ipv4_enabled = "${var.ipv4_enabled}"

      // Enable access from the private network
      private_network = "${var.network}"
    }
  }
}

resource "google_sql_database" "this" {
  name     = "${var.name}"
  instance = "${local.database_instance_name}"
}

resource "google_sql_user" "this" {
  name     = "${var.user}"
  password = "${local.user_password}"
  instance = "${local.database_instance_name}"
}
