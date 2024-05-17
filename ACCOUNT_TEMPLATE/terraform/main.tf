
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
  
  name            = "my-secret"
  secret_string   = jsonencode({
      DB_HOST     = "db.example.com",
      DB_USER     = "user",
      DB_PASSWORD = "password"
  })
}

resource "aws_secretsmanager_secret" "example" {
  name = "example"
}

# ```