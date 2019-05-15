locals {
  // The boolean flag marking whether a database instance should be created
  create_instance = "${var.instance == "" ? 1 : 0}"

  // The database instance to use
  database_instance = "${var.instance == "" ? google_sql_database_instance.this.0.self_link : var.instance }"

  // The database instance name
  database_instance_name = "${var.instance_name == "" ? google_sql_database_instance.this.0.name : var.instance_name }"

  // The private IP address name
  ip_address_name = "${var.instance_name == "" ? "database" : var.instance_name}-private-ip-address"

  // The database user password
  user_password = "${var.password == "" ? random_string.password.result : var.password}"
}
