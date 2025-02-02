module "aws" {
  source = "../_base"

  name             = "centos-stream-9-aarch64"
  ami              = "ami-08751d099be28f086"
  instance_type    = "c6g.large"
  internal_network = var.internal_network
}

variable "internal_network" {
  type        = bool
  description = "Whether this instance should be in the internal network (default: false)."
  default     = false
}

output "ip_address" {
  value = module.aws.ip_address
}
