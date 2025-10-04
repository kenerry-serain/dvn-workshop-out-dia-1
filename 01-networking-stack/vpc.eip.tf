resource "aws_eip" "this" {
  domain = "vpc"

  tags = { Name = var.vpc.nat_gateway_name }
}
