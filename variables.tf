variable "apigatewayv2_apis" {
  description = <<EOT
Map of apigatewayv2_apis, attributes below
Required:
    - name
    - protocol_type
Optional:
    - api_key_selection_expression
    - body
    - credentials_arn
    - description
    - disable_execute_api_endpoint
    - fail_on_warnings
    - ip_address_type
    - region
    - route_key
    - route_selection_expression
    - tags
    - tags_all
    - target
    - version
    - cors_configuration (block):
        - allow_credentials (optional)
        - allow_headers (optional)
        - allow_methods (optional)
        - allow_origins (optional)
        - expose_headers (optional)
        - max_age (optional)
EOT

  type = map(object({
    name                         = string
    protocol_type                = string
    api_key_selection_expression = optional(string)
    body                         = optional(string)
    credentials_arn              = optional(string)
    description                  = optional(string)
    disable_execute_api_endpoint = optional(bool)
    fail_on_warnings             = optional(bool)
    ip_address_type              = optional(string)
    region                       = optional(string)
    route_key                    = optional(string)
    route_selection_expression   = optional(string)
    tags                         = optional(map(string))
    tags_all                     = optional(map(string))
    target                       = optional(string)
    version                      = optional(string)
    cors_configuration = optional(object({
      allow_credentials = optional(bool)
      allow_headers     = optional(set(string))
      allow_methods     = optional(set(string))
      allow_origins     = optional(set(string))
      expose_headers    = optional(set(string))
      max_age           = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_apis : (
        v.api_key_selection_expression == null || (contains(["$context.authorizer.usageIdentifierKey", "$request.header.x-api-key"], v.api_key_selection_expression))
      )
    ])
    error_message = "must be one of: $context.authorizer.usageIdentifierKey, $request.header.x-api-key"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

