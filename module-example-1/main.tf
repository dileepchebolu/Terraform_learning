##Download the image 

module "image" {
  source     = "./image"
  image_name = var.image_name  
}

## Start the Container 

module "container" {
  source     = "./container"
  image_name = "${module.image.image_out}"
  container_name = "${var.container_name}"
  internal_port  = "${var.internal_port}"
  external_port  = "${var.external_port}" 
}
