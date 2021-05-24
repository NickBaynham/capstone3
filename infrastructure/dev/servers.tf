resource "aws_instance" "jenkins_server" {
  ami           = var.ec2_image
  instance_type = var.ec2_shape
  key_name      = aws_key_pair.deployer_key_name
  tags = {
    Name = var.ec2_name
  }

  subnet_id = aws_subnet.public.id
}
