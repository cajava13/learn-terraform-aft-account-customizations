Here is Terraform configuration for AWS KMS using a module source from GitHub:

```hcl
module "kms" {
  source = "github.com/learn-terraform-aft-account-customizations/modules/kms"

  name = "my-kms-key"
  description = "KMS key for encrypting S3 objects" 
  deletion_window_in_days = 7  
  enable_key_rotation = true

  tags = {
    Environment = "Prod"
  }
}
```

This fetches the kms module from the specified GitHub repository and passes in the required variables to create a KMS key. The module handles the implementation details of creating the KMS resources.

Some key things to note:

- The source points to a Terraform module on GitHub to encapsulate the KMS configuration
- Variables like name, description etc are passed to customize the KMS key 
- Tags are added to identify the environment

The module output values can be accessed to reference the KMS key ARN or other attributes. This creates reusable, modular infrastructure configuration.

Let me know if you need any other services configured or have additional questions!