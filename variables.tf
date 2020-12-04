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


resource "aws_lambda_permission" "permission" {
  statement_id  = var.statement_id
  action        = var.action
  function_name = var.function_name
  principal     = var.principal

  source_arn = var.source_arn
}

