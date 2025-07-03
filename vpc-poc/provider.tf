terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"

    }
    random = {
        source  = "hashicorp/random"
        version = "~> 3.0"
    }
  }
  cloud {
    organization = "NiteshAutomates"
    workspaces {
      name = "terraform_scripts"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
