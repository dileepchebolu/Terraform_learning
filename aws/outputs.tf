output "bucketname" {
  value = module.storage.bucketname
}

output "public_subnets" {
  value = module.network.public_subnets
}

output "public_sg" {
  value = module.network.public_sg
}

output "subnet_ips" {
  value = module.network.subnet_ips
}
