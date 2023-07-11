provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ec2" {
  ami           = "ami-0a32b54520652b8b1"
  instance_type = var.instance_type
  security_groups = ["SG"]
  key_name = var.key_name
  user_data = data.template_file.data1.rendered

  tags = {
    name = "ec2"
  }

  }

resource "aws_instance" "ec2_1" {
  ami = "ami-0a32b54520652b8b1"
  instance_type = var.instance_type
  security_groups = ["SG"]
  key_name = var.key_name
  user_data = data.template_file.data2.rendered

  tags = {
    name = "ec2_1"
  }
}


data "template_file" "data1" {
  template = file("data1.sh")
}

data "template_file" "data2" {
  template = file("data2.sh")
}


