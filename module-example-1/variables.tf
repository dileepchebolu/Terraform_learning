variable "image_name" {
  description   = "Name of the image"
  default         = "ghost:latest"
}

variable "container_name" {
  description  = "name of the container"
  default        = "dileep"
}

variable "external_port" {
  description  = "External_port"
  default        = "82"
}

variable "internal_port" {
  description = "Internal port of the container"
  default       = "2368"
}
