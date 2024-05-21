Here is a draft README for the Terraform configuration focused on KMS (Key Management Service):

# Terraform KMS Configuration

This Terraform configuration sets up KMS (Key Management Service) resources on AWS.

## Resources

The following KMS resources are configured:

- `aws_kms_key` - Creates a KMS customer master key (CMK)
- `aws_kms_alias` - Creates an alias for the KMS CMK
- `aws_kms_grant` - Grants usage permission on the CMK to other AWS resources/entities

## Usage

To use this module:

```hcl
module "kms" {
  source = "github.com/myorg/terraform-kms"
  
  cmk_description = "My KMS CMK"
  
  entities_to_grant = ["arn:aws:iam::12345678:role/myrole"]
}
```

This will create a CMK called `my-kms-key`, an alias `my-kms-key-alias`, and grant usage permission on the CMK to the provided IAM role.

Additional KMS resources and permissions can be configured as needed.

## Outputs

- `kms_key_id` - The globally unique identifier for the CMK
- `kms_key_arn` - The Amazon Resource Name (ARN) of the CMK

## Requirements

- Terraform 0.12+
- AWS provider 3.0+

## License

This code is released under the MIT License. See LICENSE for details.