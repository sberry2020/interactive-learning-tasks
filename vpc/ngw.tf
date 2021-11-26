resource "aws_nat_gateway" "prod-ngw" {
  subnet_id = "${aws_subnet.prod-subnet-private-1.id} ${aws_subnet.prod-subnet-private-2.id} ${aws_subnet.prod-subnet-private-3.id}"

  tags = local.common_tags

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.prod-igw]
}