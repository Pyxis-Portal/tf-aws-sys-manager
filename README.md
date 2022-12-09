<!-- markdownlint-disable MD033 -->
# AWS Systems Manager Module

- Creating of Parameter Store

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.61.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_ssm_parameter"></a> [create\_ssm\_parameter](#input\_create\_ssm\_parameter) | if true, enable create ssm\_parameter | `bool` | `false` | no |
| <a name="input_description_ssm_parameter"></a> [description\_ssm\_parameter](#input\_description\_ssm\_parameter) | (Optional) Description of the parameter. | `string` | `null` | no |
| <a name="input_kms_arn"></a> [kms\_arn](#input\_kms\_arn) | The ARN of a KMS key used to encrypt and decrypt SecretString values | `string` | `""` | no |
| <a name="input_name_ssm_parameter"></a> [name\_ssm\_parameter](#input\_name\_ssm\_parameter) | (Required) Name of the parameter. If the name contains a path (e.g., any forward slashes (/)), it must be fully qualified with a leading forward slash (/). For additional requirements and constraints, see the AWS SSM User Guide. | `string` | `""` | no |
| <a name="input_type_ssm_parameter"></a> [type\_ssm\_parameter](#input\_type\_ssm\_parameter) | (Required) Type of the parameter. Valid types are String, StringList and SecureString | `string` | `null` | no |
| <a name="input_value_ssm_parameter"></a> [value\_ssm\_parameter](#input\_value\_ssm\_parameter) | (Optional, exactly one of value or insecure\_value is required) Value of the parameter. This value is always marked as sensitive in the Terraform plan output, regardless of type. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_ssm_parameter"></a> [name\_ssm\_parameter](#output\_name\_ssm\_parameter) | The name of the parameter that will be to create. |
| <a name="output_ssm_parameter_arns"></a> [ssm\_parameter\_arns](#output\_ssm\_parameter\_arns) | ARN of the parameter. |
<!-- END_TF_DOCS -->