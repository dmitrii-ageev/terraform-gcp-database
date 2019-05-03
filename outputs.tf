// `database` - The database reference.
output "database" {
  value = "${google_sql_database.this.self_link}"
}

// `database_name` - The database name.
output "database_name" {
  value = "${google_sql_database.this.name}"
}

// `database_instance` - A database instance reference.
output "database_instance" {
  value = "${local.database_instance}"
}

// `database_instance_name` - A database instance name.
output "database_instance_name" {
  value = "${local.database_instance_name}"
}

// `ip_address` - The reference to a database private IP address.
output "ip_address" {
  value = "${google_compute_global_address.this.self_link}"
}
