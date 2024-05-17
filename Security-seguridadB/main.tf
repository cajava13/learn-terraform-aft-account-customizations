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

This leverages the secrets-manager module from terraform-aws-modules to create a secret string in AWS Secrets Manager. It sets the name, description, and the actual secret value to store. It also adds a tag to identify the environment.

The module handles all the resources and permissions necessary to create the secret and interact with Secrets Manager. This helps make the configuration more concise and reusable compared to defining all the resources yourself.

Some key variables from the module:

- `name` - The name of the secret 
- `description` - An optional description
- `secret_string` - The actual secret value to store
- `tags` - Tags to associate with the secret

Let me know if you need any other services configured! I can create additional Terraform resource blocks for any other AWS services as needed.