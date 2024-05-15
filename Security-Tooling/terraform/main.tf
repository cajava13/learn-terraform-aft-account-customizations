
# ```hcl

# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create KMS service
module "aws-kms" {
  # source = "your-org-name/kms/aws"
  source  = "terraform-aws-modules/kms/aws"
  version = "3.0.0"
  description             = "My KMS key"
  deletion_window_in_days = 7  
}


module "secrets-manager" {
  # source = "your-org-name/secretmanager/aws"
  source  = "terraform-aws-modules/secrets-manager/aws"
  version = "1.1.2"
  
  name = "my-secret"
  description = "This is my secret"

  secret_string = "my-secret-value"

  tags = {
    Environment = "dev"
  }
}


# ```