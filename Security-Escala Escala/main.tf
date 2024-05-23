Here is a Terraform module for AWS KMS:

```hcl
module "kms" {
  source = "your-org-name/kms/aws"

  key_description = "KMS key for encryption"
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "dev"
  }
}
```

This sources the KMS module from the Terraform registry under your organization's namespace. It passes in some module parameters to customize the KMS key configuration.

The module would handle the resource configuration for KMS keys, aliases, key policies, etc. so you don't need to define those resources directly.

For any other AWS services not covered by a module, you would create standalone resource blocks like:

```hcl
resource "aws_s3_bucket" "data" {
  bucket = "my-data-bucket"
  acl    = "private"

  tags = {
    Name = "My data bucket"
  }
}
```

This allows you to mix and match modules with custom resources to build infrastructure in Terraform. The modules help encapsulate and reuse code for common scenarios like KMS.