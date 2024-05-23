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

This sources the KMS module from the Terraform registry under your organization's namespace. It passes in some module variables to customize the KMS key configuration.

The module would handle all the resources and configuration for creating a KMS key in AWS. The module output values could be accessed to get attributes of the KMS key if needed.

For any other services not covered by a module, resources could be defined directly in the root module, for example:

```hcl
resource "aws_s3_bucket" "data" {
  bucket = "my-data-bucket"  
  # other config...
}
```

This allows combining modules to encapsulate service configurations with custom resources as needed in a modular way.