#Adding provider details 

provider "aws" {
    region     = "${var.aws_region}"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

module "storage" {
  source = "./storage"
  project_name = "${var.project_name}"
}

module "network" {
  source        = "./network"
  vpc_cidr      =  var.vpc_cidr
  public_cidrs  =  var.public_cidrs
  accessip      =  var.accessip

}
