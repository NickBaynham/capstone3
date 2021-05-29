output "master-node-ip" {
  value = aws_instance.master-node.public_ip
}

output "worker-node-1-ip" {
  value = aws_instance.worker-node-1.public_ip
}

output "worker-node-2-ip" {
  value = aws_instance.worker-node-2.public_ip
}

output "worker-node-3-ip" {
  value = aws_instance.worker-node-3.public_ip
}
