terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#EC2 Instance
resource "aws_instance" "my_app_server" {

  ami           = var.ami_id
  instance_type = var.instance
  vpc_security_group_ids = [aws_security_group.allow_http.id]

  tags = {
    Name = "ExampleAppServer"
  }
}

#EC2 Security Group
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow http inbound traffic"

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}


#S3 bucket
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}