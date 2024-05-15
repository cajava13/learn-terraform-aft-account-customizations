
# ```hcl

# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create KMS service
module "aws-kms" {
  source = "your-org-name/kms/aws"
  description             = "My KMS key"
  deletion_window_in_days = 7  
}


module "secrets_manager" {
  source = "your-org-name/secretmanager/aws"
  
  name            = "my-secret"
  secret_string   = jsonencode({
      DB_HOST     = "db.example.com",
      DB_USER     = "user",
      DB_PASSWORD = "password"
  })
}


# ```