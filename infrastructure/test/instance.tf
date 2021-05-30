resource "aws_instance" "master-node" {
  ami                    = var.CLUSTER_CONTROLLER_IMAGE
  instance_type          = var.CLUSTER_CONTROLLER_SHAPE
  subnet_id              = aws_subnet.cluster-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = file(var.PRIVATE_KEY_PATH)
    host        = aws_instance.master-node.public_ip
  }

  tags = {
    Name = "master-node"
  }
}
