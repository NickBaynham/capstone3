resource "aws_internet_gateway" "cluster-internet-gateway" {
  vpc_id = aws_vpc.cluster-vpc.id

  tags = {
    Name = "cluster-internet-gateway"
  }
}

resource "aws_route_table" "cluster-public-custom-route-table" {
  vpc_id = aws_vpc.cluster-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cluster-internet-gateway.id
  }

  tags = {
    Name = "cluster-public-custom-route-table"
  }
}

resource "aws_route_table_association" "cluster-custom-route-table-public-subnet" {
  subnet_id      = aws_subnet.cluster-subnet-public.id
  route_table_id = aws_route_table.cluster-public-custom-route-table.id
}

resource "aws_security_group" "ssh-allowed" {
  vpc_id = aws_vpc.cluster-vpc.id

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

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-allowed"
  }
}
