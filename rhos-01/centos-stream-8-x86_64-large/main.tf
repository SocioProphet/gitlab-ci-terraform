module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "ac235d90-4721-4061-9622-9d43204392f6"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
