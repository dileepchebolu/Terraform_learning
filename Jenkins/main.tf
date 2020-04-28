resource "docker_image" "image_id" {
  name = "jenkins:terraform" 
}

resource "docker_volume" "jenkins_volume" {
  name  = "jenkins_data"
}
resource "docker_container" "container_id" {
  name  = "jenkins_terraform"
  image =  docker_image.image_id.latest

  ports {
    internal = 8080
    external = 8181
  }
  
  volumes {
    volume_name    = docker_volume.jenkins_volume.name
    container_path = "/var/jenkins_home"
  }

  volumes {
    host_path      = "/var/run/docker.sock"
    container_path = "/var/run/docker.sock"
  } 
}
