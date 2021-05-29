resource "aws_vpc" "staging-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "staging_vpc"
  }

  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}
