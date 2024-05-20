# Define the provider
provider "aws" {
  region = "us-east-1"
}

module "kms" {
  source = "./learn-terraform-aft-account-customizations/modules/kms"

  name = "my-kms-key"
  description = "KMS key for encrypting S3 objects" 
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "dev"
  }
}
