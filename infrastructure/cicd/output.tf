
output "cicd-server-ip" {
  value = aws_instance.cicd-server.public_ip
}
