output "database" {
  value = "${google_sql_database.this.self_link}"
}

output "database_name" {
  value = "${google_sql_database.this.name}"
}

output "database_instance" {
  value = "${local.database_instance}"
}

output "database_instance_name" {
  value = "${local.database_instance_name}"
}

output "ip_address" {
  value = "${google_compute_global_address.this.self_link}"
}
