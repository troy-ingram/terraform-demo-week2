resource "aws_s3_bucket" "s3bucket" {
  bucket              = mydefaultbucker12012022
  object_lock_enabled = false

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}