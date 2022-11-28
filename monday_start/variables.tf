variable "region" {
  description = "Region where the environment will be there"
  type        = string
  default     = "us-east-1"
}

variable "bucket" {
  type    = string
  default = "test-bucket-gold-team"
}

variable "ami_id" {
  description = "ec2 ami"
  type        = string
  default     = "ami-09e67e426f25ce0d7"
}

variable "instance" {
  description = "this is my instance type"
  type        = string
  default     = "t2.micro"
}

