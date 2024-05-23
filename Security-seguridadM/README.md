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

1. Update `terraform.tfvars` with your AWS credentials and desired CMK settings
2. Run `terraform init` to initialize 
3. Run `terraform plan` to preview the changes
4. Run `terraform apply` to create the KMS resources

The KMS CMK and alias can then be referenced by your other AWS resources needing encryption/decryption. The `aws_kms_grant` resources grant usage access to the CMK.

Further KMS resources can be added by adding new Terraform config files or modifying the existing ones.

Let me know if you would like any changes or have any other questions!