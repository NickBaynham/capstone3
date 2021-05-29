resource "aws_key_pair" "cluster_key_pair" {
  key_name   = "cluster_key_pair"
  public_key = var.ssh_public_key
}
