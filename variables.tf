variable "statement_id" {
  type        = string
  description = "Statement id / name "
}

variable "action" {
  description = "Action to be allowed"
  default     = "lambda:InvokeFunction"
}

variable "function_name" {
  description = "Lambda function name"
}

variable "principal" {
  type        = string
  description = "Principal to be granted access"
  default     = "apigateway.amazonaws.com"
}

variable "source_arn" {
  type        = string
  description = "Source ARN to be granted access"
}
