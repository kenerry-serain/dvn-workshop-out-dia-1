output "public_subnet_arns" {
  value = aws_subnet.public[*].arn
}

output "private_subnet_arns" {
  value = aws_subnet.private[*].arn
}

output "vpc_id" {
  value = aws_vpc.this.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.this.id
}

output "elastic_ip" {
  value = aws_eip.this.public_ip
}