Here is a Terraform module for AWS KMS:

```hcl
module "kms" {
  source = "my-org/kms/aws"

  key_description = "KMS key for encryption"
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "dev"
  }
}
```

This sources the KMS module from the Terraform registry path `my-org/kms/aws`. It passes in module parameters like `key_description`, `deletion_window_in_days`, and `enable_key_rotation`. The `tags` are also passed to tag the KMS key resource.

For any other services not listed, a Terraform resource configuration would need to be defined instead of using a module. For example:

```hcl
resource "aws_s3_bucket" "data" {
  bucket = "my-data-bucket"  
  acl    = "private"

  tags = {
    Name = "My data bucket"
  }
}
```

This defines an S3 bucket resource directly since there is no predefined S3 module source. The resource block configures the bucket name, access controls, and tags.

Let me know if you need any other services configured or have additional questions!