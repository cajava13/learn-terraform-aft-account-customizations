Here is a Terraform configuration for an AWS KMS resource using the terraform-aws-modules/kms/aws module:

```hcl
module "kms" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 1.0"

  description             = "KMS key for encrypting/decrypting data" 
  deletion_window_in_days = 7  
  enable_key_rotation     = true

  aliases = ["my-app-key"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```

This creates a KMS key using best practices via the community terraform-aws-modules/kms module. Some key features:

- Description and key rotation configured
- 7 day key deletion window set 
- Aliases defined for easier key referencing
- Tags for resource metadata and ownership

The module handles all the underlying KMS resource configuration, so no additional Terraform resource blocks are needed. This demonstrates a modular approach to help keep configuration DRY and maintainable.