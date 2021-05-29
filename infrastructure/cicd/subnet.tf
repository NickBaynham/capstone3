resource "aws_subnet" "cicd-subnet-public" {
  vpc_id                  = aws_vpc.cicd-vpc.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.AVAILABILITY_ZONE
  tags = {
    Name = "cicd-subnet-public"
  }
}
