variable "create_ssm_parameter" {
  type        = bool
  default     = false
  description = "if true, enable create ssm_parameter"
}

variable "name_ssm_parameter" {
  description = "(Required) Name of the parameter. If the name contains a path (e.g., any forward slashes (/)), it must be fully qualified with a leading forward slash (/). For additional requirements and constraints, see the AWS SSM User Guide."
  default     = ""
  type        = string
}
variable "value_ssm_parameter" {
  description = "(Optional, exactly one of value or insecure_value is required) Value of the parameter. This value is always marked as sensitive in the Terraform plan output, regardless of type."
  default     = null
  type        = string
}
variable "type_ssm_parameter" {
  description = "(Required) Type of the parameter. Valid types are String, StringList and SecureString"
  default     = null
  type        = string
}
variable "description_ssm_parameter" {
  description = " (Optional) Description of the parameter."
  default     = null
  type        = string
}


variable "kms_arn" {
  description = "The ARN of a KMS key used to encrypt and decrypt SecretString values"
  type        = string
  default     = ""  
}