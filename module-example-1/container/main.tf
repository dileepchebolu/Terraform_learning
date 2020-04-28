resource "docker_container" "container_id" {
  image  = var.image_name
  name   = var.container_name 
  ports {
    internal  = var.internal_port 
    external  = var.external_port
  }
}
