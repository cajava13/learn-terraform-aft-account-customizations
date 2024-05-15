Here is a draft README for a Terraform configuration to manage AWS KMS based on the user request for "AWS KMS":

# AWS KMS Terraform Module

This module creates an AWS Key Management Service (KMS) key and alias to encrypt and decrypt data.

## Usage

```hcl
module "kms" {
  source = "github.com/myorg/kms-module"

  name        = "my-app-key"
  alias_name  = "alias/my-app-key"
  description = "KMS key for encrypting my app data"

  tags = {
    Environment = "dev" 
    Application = "MyApp"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The display name for the KMS key | `string` | n/a | yes |
| alias\_name | The alias name to reference the KMS key | `string` | n/a | yes |
| description | A description for the KMS key | `string` | `""` | no |
| tags | Tags to apply to the KMS key | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| key\_id | The globally unique identifier for the KMS key |
| key\_arn | The Amazon Resource Name (ARN) of the KMS key |

Let me know if you would like me to modify or add anything to this draft README! I focused it on the AWS KMS resources based on your request, but can expand it to cover other aspects if needed.