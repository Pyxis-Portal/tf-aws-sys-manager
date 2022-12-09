locals {
  tags = {
    terraform = true
  }
}

resource "aws_ssm_parameter" "this" {
  count       = var.create_ssm_parameter ? 1 : 0

  name        = var.name_ssm_parameter
  description = var.description_ssm_parameter  
  type        = var.type_ssm_parameter
  key_id      = var.type_ssm_parameter == "SecureString" && length(var.kms_arn) > 0 ? var.kms_arn : ""
  value       = var.value_ssm_parameter
}