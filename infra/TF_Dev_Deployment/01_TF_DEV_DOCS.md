## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | ~> 3.20.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sso_assignment"></a> [sso\_assignment](#module\_sso\_assignment) | ../modules/ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organization.Dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [vault_aws_access_credentials.creds](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/aws_access_credentials) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to deploy into | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault server URL | `string` | n/a | yes |
| <a name="input_vault_approle_role_id"></a> [vault\_approle\_role\_id](#input\_vault\_approle\_role\_id) | AppRole Role ID | `string` | `null` | no |
| <a name="input_vault_approle_secret_id"></a> [vault\_approle\_secret\_id](#input\_vault\_approle\_secret\_id) | AppRole Secret ID | `string` | `null` | no |
| <a name="input_vault_auth_method"></a> [vault\_auth\_method](#input\_vault\_auth\_method) | Vault auth method to use: token, approle, or userpass | `string` | n/a | yes |
| <a name="input_vault_aws_backend"></a> [vault\_aws\_backend](#input\_vault\_aws\_backend) | Vault AWS secret engine mount path (e.g. 'aws') | `string` | n/a | yes |
| <a name="input_vault_aws_role"></a> [vault\_aws\_role](#input\_vault\_aws\_role) | Vault role mapped to IAM permissions | `string` | n/a | yes |
| <a name="input_vault_password"></a> [vault\_password](#input\_vault\_password) | Vault password (for userpass auth) | `string` | `null` | no |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | Vault token for token auth | `string` | `null` | no |
| <a name="input_vault_username"></a> [vault\_username](#input\_vault\_username) | Vault username (for userpass auth) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dev_ps_map"></a> [dev\_ps\_map](#output\_dev\_ps\_map) | Map of user to role assignment in Dev LZ. |
