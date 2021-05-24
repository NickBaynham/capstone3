resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev_network"
  }
  enable_dns_hostnames = true
  enable_dns_support = true
}
