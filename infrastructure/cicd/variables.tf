variable "CICD_USER" {
  default = "ubuntu"
}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AVAILABILITY_ZONE" {
  default = "us-east-2a"
}

variable "PUBLIC_KEY_PATH" {
  default = "~/.ssh/id_rsa.pub"
}

variable "PRIVATE_KEY_PATH" {
  default = "~/.ssh/id_rsa"
}

variable "CICD_IMAGE" {
  default = "ami-0b9064170e32bde34"
}

variable "CICD_SHAPE" {
  default = "t2.medium"
}
