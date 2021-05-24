resource "aws_instance" "jenkins_server" {
  ami           = var.ec2_image
  instance_type = var.ec2_shape
  key_name = var.ec2_key_name
  tags = {
    Name = var.ec2_name
  }
}
