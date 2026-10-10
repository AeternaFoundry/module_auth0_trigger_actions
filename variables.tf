variable "trigger_actions" {
  description = <<EOT
Map of trigger_actions, attributes below
Required:
    - trigger
    - actions (block):
        - display_name (required)
        - id (required)
EOT

  type = map(object({
    trigger = string
    actions = list(object({
      display_name = string
      id           = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.trigger_actions : (
        length(v.actions) >= 1
      )
    ])
    error_message = "Each actions list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.trigger_actions : (
        contains(["post-login", "credentials-exchange", "pre-user-registration", "post-user-registration", "post-change-password", "send-phone-message", "password-reset-post-challenge", "custom-email-provider", "custom-phone-provider", "login-post-identifier", "signup-post-identifier", "post-credential-validation"], v.trigger)
      )
    ])
    error_message = "must be one of: \"post-login\", \"credentials-exchange\", \"pre-user-registration\", \"post-user-registration\", \"post-change-password\", \"send-phone-message\", \"password-reset-post-challenge\", \"custom-email-provider\", \"custom-phone-provider\", \"login-post-identifier\", \"signup-post-identifier\", \"post-credential-validation\""
  }
}

