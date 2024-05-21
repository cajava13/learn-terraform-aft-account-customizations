Here is modular Terraform code for the kms service using the provided module sources:

```hcl
module "kms" {
  source = "github.com/learn-terraform-aft-account-customizations/modules/kms"

  providers = {
    aws = aws
  }
}
```

This utilizes the kms module from the `learn-terraform-aft-account-customizations` GitHub repository. No other services were listed, so no additional Terraform resource configuration is included. The module block specifies the module source and passes in the default AWS provider for the module to use. This allows the kms module to manage AWS KMS resources in a modular way, keeping the resource configuration encapsulated within the module.