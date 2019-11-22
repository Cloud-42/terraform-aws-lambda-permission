variable "prefix" {
  description = "Prefix for statement_id, allows for creating unique names"
  default     = ""
}
variable "action" {
  description = "Action to be allowed"
  default     = "lambda:InvokeFunction"
}
variable "function_name" {
  description = "Lambda function name"
}
variable "principal" {
  description = "Principal to be granted access"
  default     = "apigateway.amazonaws.com"
}

variable "source_arn" {
  description = "Source ARN to be granted access"
}

