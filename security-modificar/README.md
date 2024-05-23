Here is a draft README for a Terraform configuration to manage AWS KMS based on the user request for "AWS KMS":

# AWS KMS Terraform Module

This module creates an AWS Key Management Service (KMS) key and alias to manage encryption keys.

## Usage

```hcl
module "kms" {
  source = "github.com/mymodules/kms"

  name        = "my-app-key"
  alias_name  = "alias/my-app-key"
  description = "Encryption key for my app"

  tags = {
    Environment = "dev" 
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
| tags | Tags to apply to resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| key\_arn | The Amazon Resource Name (ARN) of the key |
| key\_id | The globally unique identifier for the key |

## License

This code is released under the MIT License. See [LICENSE](LICENSE) for more details.

Let me know if you would like any changes to this draft README! I can update it based on any additional requirements or preferences.