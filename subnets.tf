# Subnets
resource "aws_subnet" "public_subnet" {
  count             = 2
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnets[count.index]
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}
resource "aws_subnet" "private_subnet" {
  count             = 2
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "Private Subnet ${count.index + 1}"
  }
}
data "aws_availability_zones" "available" {}
