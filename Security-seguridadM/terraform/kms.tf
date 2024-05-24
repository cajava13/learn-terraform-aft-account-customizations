module "kms" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 1.0"

  description             = "KMS key for encrypting/decrypting data" 
  deletion_window_in_days = 7  
  enable_key_rotation     = true
  key_usage               = "ENCRYPT_DECRYPT"
  multi_region            = false


  aliases = ["CMK-EBS"]

  tags = {
    Terraform   = "true"
    Environment = "Pruduction"
  }
}