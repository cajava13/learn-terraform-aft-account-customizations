Here is a Terraform configuration for KMS using a module source:

```terraform
module "kms" {
  source = "cajava13/kms-test/aws"

  key_description = "My KMS key"
  deletion_window_in_days = 7  
}
```

The module source "cajava13/kms-test/aws" is defined to handle the KMS resource. This allows the module to encapsulate the implementation details for KMS while exposing some configurable parameters like key_description and deletion_window_in_days.

By using a module, the configuration stays clean and simple with just the module block needed to use the kms module. This demonstrates a modular approach to help organize more complex Terraform configurations.