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
    profile = "default"
    region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0735c191cf914754d"
  instance_type = "t2.micro"
  key_name      = "iac-joao-wsl"
  vpc_security_group_ids = ["sg-0393ae1af9cbee85b"]
  tags = {
    Name = "Teste AWS Terraform novo"
  }
}