resource "aws_subnet" "public" {
  cidr_block = "${cidrsubnet(aws_vpc.dev.cidr_block, 3, 1)}"
  vpc_id = aws_vpc.dev.id
}
