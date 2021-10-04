terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "lks-test-tf-state"
    key            = "terraform.tfstate"
    dynamodb_table = "lks-test-tf-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}
