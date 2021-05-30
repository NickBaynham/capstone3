output "master-node-ip" {
  value = aws_instance.master-node.public_ip
}
