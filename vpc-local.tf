data "aws_caller_identity" "current" {}

resource "aws_vpc" "vpc-local" {
  cidr_block       = "10.16.0.0/25"
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name

  }
}