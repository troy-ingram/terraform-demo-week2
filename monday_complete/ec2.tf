resource "aws_instance" "my_app_server" {

  ami                    = var.ami_id
  instance_type          = var.instance
  vpc_security_group_ids = [aws_security_group.allow_http.id]

  tags = {
    Name = "ExampleAppServer"
  }
}