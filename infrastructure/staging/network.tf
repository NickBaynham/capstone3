resource aws_internet_gateway "staging-internet-gateway" {
  vpc_id = aws_vpc.staging-vpc.id

  tags = {
    Name = "staging-internet-gateway"
  }
}

resource aws_route_table "staging-public-custom-route-table" {
  vpc_id = aws_vpc.staging-vpc.id

  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.staging-internet-gateway.id
  }

  tags = {
    Name = "staging-public-custom-route-table"
  }
}

resource aws_route_table_association "staging-custom-route-table-public-subnet-1" {
  subnet_id = aws_subent.staging-subnet-public-1.id
  route_table_id = aws_route_table.staging-public-custom-route-table.id
}

resource aws_security_group "ssh-allowed" {
  vpc_id = aws_vpc.staging-vpc.id

  egress = {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress = {
    from_port = 22
    to_port = 22
    protocol = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
  }

  ingress = {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-allowed"
  }
}
