

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "69539f71-b9ac-4bc0-ac53-3061873b88f0-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
