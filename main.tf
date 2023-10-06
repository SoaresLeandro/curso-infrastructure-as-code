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
  region  = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0af6e9042ea5a4e3e"
  instance_type = "t2.micro"
  key_name = "teste-aws"
  # user_data = <<-EOF
  #               #!/bin/bash
  #               cd /home/ubuntu
  #               echo "<h1>Feito com Terraform</h1>" > index.html
  #               nohup busybox httpd -f -p 8080 &
  #               EOF
  tags = {
    Name = "Terraform Ansible Python"
  }
}
