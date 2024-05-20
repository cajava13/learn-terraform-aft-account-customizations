Here is a Terraform module for AWS KMS:

```hcl
module "kms" {
  source = "./modules/kms"

  key_description = "My KMS key"
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "dev"
  }
}
```

This sources the KMS module from the Terraform registry path `org/kms/aws`. It configures a key description, deletion window, enables key rotation, and specifies tags.

The module is expected to handle the resource configuration for KMS keys, aliases, and policies. Any other resources related to KMS (like encrypting EBS volumes or S3 objects) would need to be configured as standard Terraform resources outside the module.

Let me know if you need any other specifics configured for the KMS module! I can update the module usage with additional arguments and data sources to meet any other requirements.