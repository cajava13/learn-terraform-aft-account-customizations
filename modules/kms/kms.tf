# ```hcl

# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create KMS service
module "kms" {
  source = "./modules/kms"
  version = "3.0.0"
  
  description             = "My KMS key"
  deletion_window_in_days = 7  
}

# ```