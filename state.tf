terraform {
  backend "s3" {
    bucket = "terraform523"
    key    = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}