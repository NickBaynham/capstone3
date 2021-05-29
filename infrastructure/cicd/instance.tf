resource aws_instance "cicd-server" {
  ami           = var.CICD_IMAGE
  instance_type = var.CICD_SHAPE
  subnet_id     = aws_subnet.cicd-subnet-public-1.id
  key_name      = aws_key_pair.cicd-key-pair.key_name
  
  tags          = {
    Name = "cicd-server"
  }

  connection {
    user = var.CICD_USER
    private_key = file(var.PRIVATE_KEY_PATH)
  }
}
