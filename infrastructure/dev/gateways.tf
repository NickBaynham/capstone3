resource "aws_internet_gateway" "dev_internet" {
  vpc_id = aws_vpc.dev.id

  tags = {
    Name = "dev_internet"
  }
}
