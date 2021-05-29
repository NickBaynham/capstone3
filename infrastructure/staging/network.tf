resource aws_vpc "staging_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "staging_network"
  }

  enable_dns_hostnames = true
  enable_dns_support = true
}
