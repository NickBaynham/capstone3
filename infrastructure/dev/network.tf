resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev_network"
  }
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_eip" "id-dev" {
  instance = aws_instance.jenkins_server.id
  vpc      = true
}
