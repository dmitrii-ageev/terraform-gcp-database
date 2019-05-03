// Database settings
variable "ipv4_enabled" {
  description = "Enable public IPv4 address support"
  default     = false
}

variable "instance" {
  description = "A database instance where to create the database."
  default     = ""
}

variable "instance_name" {
  description = "A database instance name. If an instance isn't provided a new one will be created with this name."
}

variable "instance_version" {
  description = "The database instance version"
  default     = "POSTGRES_9_6"
}

variable "instance_availability_type" {
  description = "The instance availablity type"
  default     = "REGIONAL"
}

variable "name" {
  description = "A database name"
  default     = "default"
}

variable "network" {
  description = "The network to which database should be attached"
}

variable "user" {
  description = "A database username to create"
  default     = "postgres"
}

variable "password" {
  description = "A password for the database user"
  default     = ""
}
