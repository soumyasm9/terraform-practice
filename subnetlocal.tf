resource "aws_subnet" "subpublic" {
  vpc_id     = aws_vpc.vpc-local.id
  cidr_block = "10.16.0.0/26"

  tags = {
    Name = var.subpublic
  }
}