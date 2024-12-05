terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    required_version = ">= 1.2.0"
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = ami-0866a3c8686eaeeba
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-demo"
  }
}