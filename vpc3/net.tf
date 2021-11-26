resource "aws_route_table" "public" {
	vpc_id = aws_vpc.sana.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.gw.id
   }
}


resource "aws_route_table" "private" {
	vpc_id = aws_vpc.sana.id
	route {
		cidr_block = "0.0.0.0/0"
		nat_gateway_id = aws_nat_gateway.ak-nat.id
   
	}
}
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.subnet3.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public_subnet1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet3" {
  subnet_id      = aws_subnet.public_subnet3.id
  route_table_id = aws_route_table.public.id
}
data "aws_availability_zones" "available" {
  state = "available"
}



resource "aws_eip" "example" {
  vpc      = true
  tags                 = local.common_tags
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.sana.id
  tags                 = local.common_tags
}
resource "aws_nat_gateway" "ak-nat" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.public_subnet1.id
  tags                 = local.common_tags
}