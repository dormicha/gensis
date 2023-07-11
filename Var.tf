variable "instance_type" {
  description = "instance type for ec2"
  default = "t3.micro"
}

variable "key_name" {
  description = "keys to connect to ec2 instance"
  default = "Shag-key"
}

variable "region" {
  default = "eu-north-1"
}

variable "access_key" {
  default = "------------"
}

variable "secret_key" {
  default = "----------"
}

variable "vpc_id" {
  default = "vpc-0d109cee62c8a08c4"
}