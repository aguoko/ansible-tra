# configured aws provider with proper credentials
provider "aws" {
  region    = "eu-west-2"
  profile   = "Mazi"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ikenna-dockerised-statefile"

  tags = {
    Name        = "My bucket"
  }
}
