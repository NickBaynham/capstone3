resource "aws_instance" "master-node" {
  ami                    = var.CLUSTER_CONTROLLER_IMAGE
  instance_type          = var.CLUSTER_CONTROLLER_SHAPE
  subnet_id              = aws_subnet.cluster-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  provisioner "remote-exec" {
    inline = [
      "sudo useradd -m -s /bin/bash ansible",
      "sudo su ansible",
      "sudo touch /home/ansible/.ssh/authorized_keys",
      "sudo echo file(var.PUBLIC_KEY_PATH) > authorized_keys",
      "sudo mv authorized_keys /home/ansible/.ssh/authorized_keys",
      "sudo chown -R ansible:ansible /home/ansible/.ssh",
      "sudo chmod 700 /home/ansible/.ssh",
      "sudo chmod 600 /home/ansible/.ssh/authorized_keys",
      "sudo usermod -aG sudo ansible"
    ]
  }

  connection {
    user        = var.EC2_USER
    private_key = file(var.PRIVATE_KEY_PATH)
    host        = aws_instance.master-node.public_ip
  }
}
