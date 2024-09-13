<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_ou.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/ou) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the OU | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A map of label keys to their corresponding values | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the OU | `string` | n/a | yes |
| <a name="input_owner_user_groups"></a> [owner\_user\_groups](#input\_owner\_user\_groups) | Owner user groups for the OU | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_owner_users"></a> [owner\_users](#input\_owner\_users) | Owner users for the OU | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_parent_ou_id"></a> [parent\_ou\_id](#input\_parent\_ou\_id) | Parent OU ID for the OU | `number` | n/a | yes |
| <a name="input_permission_scheme_id"></a> [permission\_scheme\_id](#input\_permission\_scheme\_id) | Permission scheme ID for the OU | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ou_id"></a> [ou\_id](#output\_ou\_id) | The ID of the OU created by this module |
<!-- END_TF_DOCS -->