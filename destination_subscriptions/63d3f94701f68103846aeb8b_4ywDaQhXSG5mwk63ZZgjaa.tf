import {
  to = segment_destination_subscription.id-63d3f94701f68103846aeb8b_4ywDaQhXSG5mwk63ZZgjaa
  id = "63d3f94701f68103846aeb8b:4ywDaQhXSG5mwk63ZZgjaa"
}

resource "segment_destination_subscription" "id-63d3f94701f68103846aeb8b_4ywDaQhXSG5mwk63ZZgjaa" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "63d3f94701f68103846aeb8b"
  enabled              = false
  model_id             = null
  name                 = "Group Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    group_id = {
      "@template" = "{{groupId}}"
    }
    traits = {
      "@template" = "{{traits}}"
    }
  })
  trigger = "type = \"group\""
}