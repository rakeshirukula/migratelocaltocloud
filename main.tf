terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform { 
  cloud { 
    
    organization = "RAKESHDEVOPS" 

    workspaces { 
      name = "RAMA" 
    } 
  } 
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



