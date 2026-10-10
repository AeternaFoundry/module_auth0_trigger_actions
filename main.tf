resource "auth0_trigger_actions" "trigger_actions" {
  for_each = var.trigger_actions

  trigger = each.value.trigger

  dynamic "actions" {
    for_each = each.value.actions
    content {
      display_name = actions.value.display_name
      id           = actions.value.id
    }
  }
}

