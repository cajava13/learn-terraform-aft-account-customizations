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
| name | The display name of the key | `string` | n/a | yes |
| alias\_name | The alias name that refers to the key | `string` | n/a | yes |
| description | The description of the key | `string` | `""` | no |
| tags | Tags to apply to resources created | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| key\_id | The globally unique identifier for the key |
| key\_arn | The Amazon Resource Name (ARN) of the key |

## License

This code is released under the MIT License. See [LICENSE](LICENSE) for more details.

Let me know if you would like any changes to this draft README! I tried to cover the basic details based on the request for AWS KMS, but I can add/update any sections as needed.