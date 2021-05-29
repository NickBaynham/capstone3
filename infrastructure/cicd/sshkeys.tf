resource "aws_key_pair" "cicd-key-pair" {
  key_name   = "cicd-key-pair"
  public_key = file(var.PUBLIC_KEY_PATH)
}
