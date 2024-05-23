Here is Terraform configuration for AWS KMS using the terraform-module/kms/aws module:

```terraform
module "kms" {
  source = "terraform-aws-modules/kms/aws"

  description = "My KMS key"

  alias = "my-kms-key"

  policy = data.aws_iam_policy_document.key_policy.json
}

data "aws_iam_policy_document" "key_policy" {
  statement {
    sid    = "Enable IAM User Permissions"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::123456789012:root"]
    }

    actions   = ["kms:*"]
    resources = ["*"]
  }
}
```

This creates a KMS key using the community KMS module, sets a description, alias, and key policy for the key. The module handles much of the implementation details and best practices for provisioning KMS keys. Additional resources or customization could be added within this module block as needed.