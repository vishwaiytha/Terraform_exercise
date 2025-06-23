provider "aws"{
    region = "us-east-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }
  backend "s3" {
    bucket  = "my-terraform-statefilestore" 
    key     = "ec2/terraform.tfstate"           
    region  = "us-east-2"
    encrypt = true
  }
}
