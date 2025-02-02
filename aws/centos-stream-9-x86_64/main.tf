module "aws" {
  source = "../_base"

  name             = "centos-stream-9-x86_64"
  ami              = "ami-0ac40768a045a5f2b"
  instance_type    = "c6i.large"
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
