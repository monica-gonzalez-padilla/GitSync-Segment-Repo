import {
  to = segment_destination_subscription.id-63d3f94701f68103846aeb8b_64k7L7cGnKKx8bEWtgGoCf
  id = "63d3f94701f68103846aeb8b:64k7L7cGnKKx8bEWtgGoCf"
}

resource "segment_destination_subscription" "id-63d3f94701f68103846aeb8b_64k7L7cGnKKx8bEWtgGoCf" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "63d3f94701f68103846aeb8b"
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