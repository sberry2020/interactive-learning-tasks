resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.sana.id
  cidr_block              = "10.0.101.0/24"
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = data.aws_availability_zones.available.names[0]
  tags                    = local.common_tags
}

resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.sana.id
  cidr_block              = "10.0.102.0/24"
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = data.aws_availability_zones.available.names[1]
  tags                    = local.common_tags
}

resource "aws_subnet" "public_subnet3" {
  vpc_id                  = aws_vpc.sana.id
  cidr_block              = "10.0.103.0/24"
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = data.aws_availability_zones.available.names[2]
  tags                    = local.common_tags
}
