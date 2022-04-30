TERRAFORM DATABASE MODULE
=========================

A terraform module to create a new Google SQL database and/or an database instance.


Module Input Variables
----------------------

 - `instance` - A database instance where to create the database.
 - `instance_name` - A database instance name. If an instance isn't provided a new one will be created with this name.
 - `instance_version` - The database instance version (POSTGRES_9_6).
 - `instance_availability_type` - The instance availability type (REGIONAL).
 - `name` - A database name (default).
 - `network` - The network to which database should be attached.
 - `ipv4_enabled` - Enable public IPv4 address support (false).
 - `user` - A database username to create (postgres).
 - `password` - A password for the database user (generate random).


Usage
-----

```hcl
module "database" {
  source = "git::git@github.com:dmitrii-ageev/terraform-database.git?ref=0.1.1"

  instance_name = "postgresql"
  network = "${data.google_compute_network.self_link}"
}
```


Outputs
=======

 - `database` - The database reference.
 - `database_name` - The database name.
 - `database_instance` - A database instance reference.
 - `database_instance_name` - A database instance name.
 - `ip_address` - The reference to a database private IP address.

Note
====

If you're getting an error "Resource '<some resource>' not found for variable '<some variable>'",
make sure a network ID you pass to the module, matches the regular expression: 
`match regexp "projects/((?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?)))/global/networks/((?:[a-z](?:[-a-z0-9]*[a-z0-9])?))$"`.

Author
======

Dmitrii Ageev <dmitrii@opsworks.ru>
