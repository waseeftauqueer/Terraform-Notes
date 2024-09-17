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
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08c40ec9ead489470"  # Ubuntu 20.04 LTS Free-tier eligible AMI
  instance_type = "t2.micro"               # Free-tier eligible instance type

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
