module "kms" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 1.0"

  description             = "KMS key for encrypting/decrypting data" 
  deletion_window_in_days = 7  
  enable_key_rotation     = true

  aliases = ["my-app-key"]

  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
}