resource "aws_key_pair" "cluster-key-pair" {
  key_name   = "cluster-key-pair"
  public_key = file(var.PUBLIC_KEY_PATH)
}
