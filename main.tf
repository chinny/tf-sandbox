provider "aws" {
    region                               = "us-west-2"
}

terraform {
    required_version = ">=1.1.9"
    required_providers {
      aws = {
          source = "hashicorp/aws"
      }
    }
}

resource "aws_instance" "test_instance" {
    instance_type = "t3.micro"
    ami = "ami-030d0fd97bec430c1"
}