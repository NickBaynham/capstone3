variable "ec2_name" {
  default = "JenkinsServer"
}

variable "ec2_image" {
  default = "ami-0b9064170e32bde34"
}

variable "ec2_shape" {
  default = "t2.medium"
}

variable "ec2_key_name" {
  default = "terraform"
}

variable "public_key" {}

