<p align="center">
  <a href="https://www.cloud42.io/" target="_blank" rel="Homepage">
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>

---

<p align="center">Need help with your Cloud builds <a href="https://www.cloud42.io/contact/" target="_blank" rel="ContactUS"> DROP US A LINE</a>.</p>

---
# terraform-aws-lambda-permission
Creates Lambda IAM permissions.

Simple module to add permissions to a lambda function. Common use case is to add lambda:InvokeFunction permission for API Gateway or SNS topic.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| action | Action to be allowed | `string` | `"lambda:InvokeFunction"` | no |
| function\_name | Lambda function name | `any` | n/a | yes |
| principal | Principal to be granted access | `string` | `"apigateway.amazonaws.com"` | no |
| source\_arn | Source ARN to be granted access | `string` | n/a | yes |
| statement\_id | Statement id / name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_lambda\_permission | Root object |
