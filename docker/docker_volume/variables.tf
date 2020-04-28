variable "mysql_root_password" {
  description  = "The MySQL root password"
  default      = "p@ssw0rd"
}

variable "ghost_db_username" {
  description  = "Ghost blog database username"
  default      = "root"
}

variable "ghost_db_name" {
  description = "Ghost blog database name"
  default     = "ghost"
}

variable "mysql_network_alias" {
  description = "The network alias for MySQL"
  default     = "db"
}

variable "ghost_network_alias" {
  description = "The Network alias for ghost"
  default     = "ghost"
}

variable "external_port" {
  description  = "Public port for ghost"
  default      = "82"
}
