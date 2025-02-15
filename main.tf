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
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  user_data = <<-EOF
                  #!/bin/bash
                  cd /home/ubuntu
                  echo "<h1> Feito com o Terraform</h1>" > index.html
                  nohup busybox httpd -f -p 8008 &
                  EOF    
  tags = {
    Name = "teste-aws"
  }
}
