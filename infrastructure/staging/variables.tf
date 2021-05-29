variable "ssh_public_key" {}

variable "cluster_controller_name" {
  default = "cluster_controller"
}

variable "cluster_controller_image" {
  default = "ami-0b9064170e32bde34"
}

variable "cluster_controller_shape" {
  default = "t2.medium
}


variable"cluster_node_image" {
  default = "ami-0b9064170e32bde34"
}

variable "cluster_node_shape" {
  default = "t2.medium"
}


variable "cluster_node_1_name" {
  default = "cluster_node_1"
}

variable "cluster_node_2_name" {
  default = "cluster_node_2"
}

variable "cluster_node_3_name" {
  default = "cluster_node_3"
}
