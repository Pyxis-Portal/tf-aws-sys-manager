
locals {
  name_ssm_parameter_out = var.name_ssm_parameter
}

output "name_ssm_parameter" {
  # Names are not sensitive
  value       = local.name_ssm_parameter_out
  description = "The name of the parameter that will be to create."
}


output "ssm_parameter_arns" {
  value = aws_ssm_parameter.this.*.arn
  description = "ARN of the parameter."
}
