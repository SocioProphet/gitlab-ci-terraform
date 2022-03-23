module "aws" {
  data "aws_ec2_instance_type_offering" "instance_type_x86_64" {
    filter {
      name   = "instance-type"
      values = ["c6i.large", "c6a.large", "c6i.xlarge", "c6a.xlarge"]
    }
  
    preferred_instance_types = ["c6i.large", "c6a.large", "c6i.xlarge", "c6a.xlarge"]
  }
  source = "../_base"

  name             = "centos-stream-8-x86_64"
  ami              = "ami-059f1cc52e6c85908"
  instance_type    = data.instance_type_x86_64.instance_type
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
