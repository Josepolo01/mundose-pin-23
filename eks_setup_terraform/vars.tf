variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "kube_version" {
  type = string
  default = "1.27"
}

variable "project" {
  type = string
  default = "PIN 2023 MUNDOS-E - JOSE POLO"
}

variable "arn_account"  {
  type = string
}

variable "arn_username" {
  type = string
  default = "pin23-admin"
}


variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    type = string
    default = "t2.small"
}