resource "aws_instance" "master-node" {
  ami                    = var.CLUSTER_CONTROLLER_IMAGE
  instance_type          = var.CLUSTER_CONTROLLER_SHAPE
  subnet_id              = aws_subnet.cluster-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = file(var.PRIVATE_KEY_PATH)
  }

  tags = {
    Name = "master-node"
  }
}

resource "aws_instance" "worker-node-1" {
  ami                    = var.CLUSTER_NODE_IMAGE
  instance_type          = var.CLUSTER_NODE_SHAPE
  subnet_id              = aws_subnet.cluster-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = file(var.PRIVATE_KEY_PATH)
  }

  tags = {
    Name = "worker-node"
  }
}

resource "aws_instance" "worker-node-2" {
  ami                    = var.CLUSTER_NODE_IMAGE
  instance_type          = var.CLUSTER_NODE_SHAPE
  subnet_id              = aws_subnet.cluster-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = file(var.PRIVATE_KEY_PATH)
  }

  tags = {
    Name = "worker-node"
  }
}

resource "aws_instance" "worker-node-3" {
  ami                    = var.CLUSTER_NODE_IMAGE
  instance_type          = var.CLUSTER_NODE_SHAPE
  subnet_id              = aws_subnet.cluster-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = aws_key_pair.cluster-key-pair.id

  connection {
    user        = var.EC2_USER
    private_key = file(var.PRIVATE_KEY_PATH)
  }

  tags = {
    Name = "worker-node"
  }
}
