import {
  to = segment_destination_subscription.id-650b16d5c8b925499e4b76d6_gNrr3H7FEyy5owNXqSNuoJ
  id = "650b16d5c8b925499e4b76d6:gNrr3H7FEyy5owNXqSNuoJ"
}

resource "segment_destination_subscription" "id-650b16d5c8b925499e4b76d6_gNrr3H7FEyy5owNXqSNuoJ" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "650b16d5c8b925499e4b76d6"
  enabled              = true
  model_id             = null
  name                 = "Group Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    group_id = {
      "@path" = "$.groupId"
    }
    traits = {
      "@path" = "$.traits"
    }
  })
  trigger = "type = \"group\""
}