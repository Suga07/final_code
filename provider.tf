terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = var.region
    # profile = "mani"
}

terraform {
  backend "s3" {
    bucket = "terraform-statefile-pictory-poc"
    key    = "test-1/terraform.tfstate"
    region = "ap-south-1"
  }
}
