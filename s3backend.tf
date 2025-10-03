terraform {
  backend "s3" {
    bucket = "my-ecom-s3-bkt"
    key    = "lmsproject/qa/terraform.tfstate"
    region = "ap-south-1"
  }
}
