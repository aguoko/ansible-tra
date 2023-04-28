# configured aws provider with proper credentials
provider "aws" {
  region    = "eu-west-2"
  shared_config_files      = ["/Users/kenna/.aws/conf"]
  shared_credentials_files = ["/Users/kenna/.aws/credentials"]
  profile                  = "Muna"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ikenna-docker-statefile"

  tags = {
    Name        = "My bucket"
  }
}