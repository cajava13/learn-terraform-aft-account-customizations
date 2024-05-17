Here is a Terraform configuration for AWS Secret Manager using the recommended terraform-aws-modules module:

```hcl
module "secret" {
  source = "terraform-aws-modules/secrets-manager/aws"

  name = "my-secret"
  description = "This is my secret"

  secret_string = "Shh don't tell anyone!"

  tags = {
    Environment = "dev"
  }
}
```

This leverages the terraform-aws-modules/secrets-manager module to create a secret string in AWS Secrets Manager. It sets the name, description, and the actual secret value. It also adds a tag to organize the secret.

The module handles all the resources and permissions necessary to create the secret securely. By using a well-maintained community module like this, the configuration stays simple and reusable.

Let me know if you need any other services configured! I can create Terraform resource blocks directly for anything not covered by a recommended module.