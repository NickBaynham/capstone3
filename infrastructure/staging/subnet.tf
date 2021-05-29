resource "aws_subnet" "staging-subnet-public-1" {
  vpc_id                  = aws_vpc.staging-vpc.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone
  tags = {
    Name = "staging-subnet-public-1"
  }
}
