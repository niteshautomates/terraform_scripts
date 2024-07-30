terraform {
  backend "s3" {
    bucket = "ap-south-1-nitesh-tf-state-001"
    region = "ap-south-1"
    key    = "terraform.tfstate"
  }
}




provider "aws" {
  region     = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.small"
  tags = {
    "Name" = "dev"
  }
}