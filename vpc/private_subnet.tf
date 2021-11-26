locals {
  common_tags = {
    Env  = "Dev"
    Team = "DevOps"
  }
}
resource "aws_subnet" "prod-subnet-private-1" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "false" //it makes this a public subnet
  availability_zone       = "eu-west-1a"
  tags                    = local.common_tags
}

resource "aws_subnet" "prod-subnet-private-2" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "false" //it makes this a public subnet
  availability_zone       = "eu-west-1b"
  tags                    = local.common_tags
}

resource "aws_subnet" "prod-subnet-private-3" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "false" //it makes this a public subnet
  availability_zone       = "eu-west-1c"
  tags                    = local.common_tags
}