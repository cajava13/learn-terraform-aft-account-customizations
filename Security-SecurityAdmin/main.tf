Here is Terraform configuration for AWS KMS using a module source from GitHub:

```hcl
module "kms" {
  source = "github.com/learn-terraform-aft-account-customizations/modules/kms"

  name = "my-kms-key"
  description = "KMS key for encrypting S3 objects" 
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "dev"
  }
}
```

This pulls in the KMS module from the specified GitHub repo and passes in the required variables to create a KMS key. Additional KMS keys could be created by instantiating the module multiple times with different configurations.

For any other services not covered by that modules repo, resources can be defined directly in the root module like:

```hcl
resource "aws_s3_bucket" "example" {
  bucket = "my-s3-bucket"  
  #... other config  
}
```

This allows combining modular code from repositories with custom one-off resources as needed.