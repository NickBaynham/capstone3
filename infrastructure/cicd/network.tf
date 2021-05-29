resource "aws_vpc" "cicd-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "cicd-vpc"
  }
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_eip" "id-cicd" {
  instance = aws_instance.cicd-server.id
  vpc      = true
}

resource "aws_internet_gateway" "cicd-internet-gateway" {
  vpc_id = aws_vpc.cicd-vpc.id

  tags = {
    Name = "cicd-internet-gateway"
  }
}

resource "aws_route_table" "cicd-public-custom-route-table" {
  vpc_id = aws_vpc.cicd-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cicd-internet-gateway.id
  }

  tags = {
    Name = "cicd-public-custom-route-table"
  }
}

resource "aws_route_table_association" "cicd-custom-route-table-public-subnet" {
  subnet_id      = aws_subnet.cicd-subnet-public.id
  route_table_id = aws_route_table.cicd-public-custom-route-table.id
}

resource "aws_security_group" "ssh-allowed" {
  vpc_id = aws_vpc.cicd-vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-allowed"
  }
}
