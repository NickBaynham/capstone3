resource "aws_key_pair" "deployer-key" {
  key_name = "deployer-key"
  public_key = var.public_key
}
