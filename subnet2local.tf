resource "aws_subnet" "subprivate" {
  vpc_id     = aws_vpc.vpc-local.id
  cidr_block = "10.16.0.64/27"

  tags = {
    Name = var.subprivate
  }
}