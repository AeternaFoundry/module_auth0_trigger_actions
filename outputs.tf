output "trigger_actions_id" {
  description = "Map of id values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_actions.trigger_actions : k => v.id }
}
output "trigger_actions_actions" {
  description = "Map of actions values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_actions.trigger_actions : k => v.actions }
}
output "trigger_actions_trigger" {
  description = "Map of trigger values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_actions.trigger_actions : k => v.trigger }
}

