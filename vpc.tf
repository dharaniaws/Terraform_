resource "aws_vpc" "demovpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "demo vpc"
  }
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
