terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.18.0"
   }
 }

 backend "s3" {
     bucket = "batoto-bitange"
     key = "global/iam/github-actions/github-actions-oidc.tfstate"
     region = "us-east-1"
 
     dynamodb_table = "terraone-locks"
     encrypt = true
   }
}