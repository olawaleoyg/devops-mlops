terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"

}

/* create ec2 instance */
  resource "aws_instance" "example_server1" {
  ami           = "ami-0eb260c4d5475b901"
  instance_type = "t2.micro"
  subnet_id = "subnet-00be2de1445cb3a00"
  # vpc_security_group_ids =""
  key_name = "monitoring"
  associate_public_ip_address = false
  # volume_type = "ebs"
  # volume_size = "8"

  tags = {
    Name = "test"
  }
}