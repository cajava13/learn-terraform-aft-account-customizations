Here is a Terraform configuration for AWS Secret Manager using the recommended terraform-aws-modules module:

```hcl
module "secret" {
  source = "terraform-aws-modules/secrets-manager/aws"

  name = "my-secret"
  description = "This is my secret"

  secret_string = "my-secret-value"

  tags = {
    Environment = "dev"
  }
}
```

This leverages the secrets-manager module from terraform-aws-modules to create a secret string in AWS Secrets Manager. It sets the name, description, secret value and tags.

The main benefits of using this module are that it handles all the permissions, policies and resources needed to manage secrets in Secrets Manager. It reduces boilerplate code and aligns with best practices.

Some key variables it provides include name, description, secret_string, secret_binary, rotation_rules, and more. It handles all the permissions, policies and resources so you don't have to define those yourself.

Let me know if you need any other services configured! I can create Terraform resource configurations for any other AWS or infrastructure services.