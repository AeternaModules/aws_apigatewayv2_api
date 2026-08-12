output "apigatewayv2_apis_id" {
  description = "Map of id values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_apis_api_endpoint" {
  description = "Map of api_endpoint values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.api_endpoint if v.api_endpoint != null && length(v.api_endpoint) > 0 }
}
output "apigatewayv2_apis_api_key_selection_expression" {
  description = "Map of api_key_selection_expression values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.api_key_selection_expression if v.api_key_selection_expression != null && length(v.api_key_selection_expression) > 0 }
}
output "apigatewayv2_apis_arn" {
  description = "Map of arn values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "apigatewayv2_apis_body" {
  description = "Map of body values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.body if v.body != null && length(v.body) > 0 }
}
output "apigatewayv2_apis_cors_configuration" {
  description = "Map of cors_configuration values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.cors_configuration if v.cors_configuration != null && length(v.cors_configuration) > 0 }
}
output "apigatewayv2_apis_credentials_arn" {
  description = "Map of credentials_arn values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.credentials_arn if v.credentials_arn != null && length(v.credentials_arn) > 0 }
}
output "apigatewayv2_apis_description" {
  description = "Map of description values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigatewayv2_apis_disable_execute_api_endpoint" {
  description = "Map of disable_execute_api_endpoint values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.disable_execute_api_endpoint if v.disable_execute_api_endpoint != null }
}
output "apigatewayv2_apis_execution_arn" {
  description = "Map of execution_arn values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.execution_arn if v.execution_arn != null && length(v.execution_arn) > 0 }
}
output "apigatewayv2_apis_fail_on_warnings" {
  description = "Map of fail_on_warnings values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.fail_on_warnings if v.fail_on_warnings != null }
}
output "apigatewayv2_apis_ip_address_type" {
  description = "Map of ip_address_type values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "apigatewayv2_apis_name" {
  description = "Map of name values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigatewayv2_apis_protocol_type" {
  description = "Map of protocol_type values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.protocol_type if v.protocol_type != null && length(v.protocol_type) > 0 }
}
output "apigatewayv2_apis_region" {
  description = "Map of region values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apigatewayv2_apis_route_key" {
  description = "Map of route_key values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.route_key if v.route_key != null && length(v.route_key) > 0 }
}
output "apigatewayv2_apis_route_selection_expression" {
  description = "Map of route_selection_expression values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.route_selection_expression if v.route_selection_expression != null && length(v.route_selection_expression) > 0 }
}
output "apigatewayv2_apis_tags" {
  description = "Map of tags values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "apigatewayv2_apis_tags_all" {
  description = "Map of tags_all values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "apigatewayv2_apis_target" {
  description = "Map of target values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.target if v.target != null && length(v.target) > 0 }
}
output "apigatewayv2_apis_version" {
  description = "Map of version values across all apigatewayv2_apis, keyed the same as var.apigatewayv2_apis"
  value       = { for k, v in aws_apigatewayv2_api.apigatewayv2_apis : k => v.version if v.version != null && length(v.version) > 0 }
}

