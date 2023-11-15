

terraform {
  backend "s3" {
    bucket = "opstycoon-terraform-file"
    key    = "optycoon-terraform-state/terraform.tfstate"
    region = "eu-west-2"
  }
}
