provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = ["default"] 




  tags = {
    Name = "MyEC2Instance"
  }
}