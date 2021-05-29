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

variable "CLUSTER_CONTROLLER_IMAGE" {
  default = "ami-0b9064170e32bde34"
}

variable "CLUSTER_CONTROLLER_SHAPE" {
  default = "t2.medium"
}


variable "CLUSTER_NODE_IMAGE" {
  default = "ami-0b9064170e32bde34"
}

variable "CLUSTER_NODE_SHAPE" {
  default = "t2.medium"
}
