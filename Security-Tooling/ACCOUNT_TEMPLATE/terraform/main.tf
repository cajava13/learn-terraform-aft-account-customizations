
# ```hcl

# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create KMS service
module "kms" {
  source = "your-org-name/kms/aws"
  description             = "My KMS key"
  deletion_window_in_days = 7  
}

# ```