resource "aws_instance" "staging-controller" {
  ami                    = var.cluster_controller_image
  instance_type          = var.cluster_controller_shape
  subnet_id              = aws_subnet.staging-subnet-public-1.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = "${file("$var.PRIVATE_KEY_PATH}")}"
  }
}

resource "aws_instance" "staging-node-1" {
  ami                    = var.cluster_node_image
  instance_type          = var.cluster_node_shape
  subnet_id              = aws_subnet.staging-subnet-public-1.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = "${file("$var.PRIVATE_KEY_PATH}")}"
  }
}

resource "aws_instance" "staging-node-2" {
  ami                    = var.cluster_node_image
  instance_type          = var.cluster_node_shape
  subnet_id              = aws_subnet.staging-subnet-public-1.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = "${file("$var.PRIVATE_KEY_PATH}")}"
  }
}

resource "aws_instance" "staging-node-3" {
  ami                    = var.cluster_node_image
  instance_type          = var.cluster_node_shape
  subnet_id              = aws_subnet.staging-subnet-public-1.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = "${file("$var.PRIVATE_KEY_PATH}")}"
  }
}
