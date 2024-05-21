module "kms" {
  source  = "terraform-aws-modules/kms/aws"
  version = "3.0.0"

  description = "KMS key for encrypting EBS objects." 
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "Prod"
  }
}