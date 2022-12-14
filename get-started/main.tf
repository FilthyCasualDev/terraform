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
  region  = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06bb074d1e196d0d4"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformAppServerInstance"
    Enviroment = "TestEnviroment"
  }
}
