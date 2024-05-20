# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create KMS service
module "kms" {
  source = "./modules/kms"
  version = "3.0.0"
  
  name = "my-secret"
  description = "This is my secret"

  secret_string = "Shh don't tell anyone!"

  tags = {
    Environment = "Prod"
  }
}