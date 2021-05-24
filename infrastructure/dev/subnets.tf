resource "aws_subnet" "public" {
  cidr_block = cidrsubnet(aws_vpc.dev.cidr_block, 3, 1)
  vpc_id     = aws_vpc.dev.id
}

resource "aws_route_table" "route_table_dev" {
  vpc_id = aws_vpc.dev.id

  route {
    cidr_block = "0.0.0./0"
    gateway_id = aws_internet_gateway.dev_internet.id
  }

  tags = {
    Name = "dev_route_table"
  }
}

resource "aws_route_table_association" "subnet_association" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.route_table_dev.id
}
