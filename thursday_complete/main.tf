module "s3" {
  source = "./s3"
  #can only change the bucket name because
  #it's the only variable in the child module
  bucket_name = "mynewbucket12012022"
}

