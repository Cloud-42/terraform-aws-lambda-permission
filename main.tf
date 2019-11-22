# -------------------------------
# Grant permissions
# --------------------------------
resource "aws_lambda_permission" "permission" {
  statement_id  = "${var.prefix}-AllowAPIGatewayInvoke"
  action        = var.action
  function_name = var.function_name
  principal     = var.principal

  # The "/*/*" portion grants access from any method on any resource
  # within the API Gateway REST API.
  source_arn = "${var.source_arn}/*/*"
}
