output "trigger_actions_id" {
  description = "Map of id values across all trigger_actions, keyed the same as var.trigger_actions except keys with no id are omitted"
  value       = { for k, v in auth0_trigger_actions.trigger_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "trigger_actions_actions" {
  description = "Map of actions values across all trigger_actions, keyed the same as var.trigger_actions except keys with no actions are omitted"
  value       = { for k, v in auth0_trigger_actions.trigger_actions : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "trigger_actions_trigger" {
  description = "Map of trigger values across all trigger_actions, keyed the same as var.trigger_actions except keys with no trigger are omitted"
  value       = { for k, v in auth0_trigger_actions.trigger_actions : k => v.trigger if v.trigger != null && length(v.trigger) > 0 }
}

