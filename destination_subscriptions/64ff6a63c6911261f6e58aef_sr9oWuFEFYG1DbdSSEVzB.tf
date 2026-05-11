import {
  to = segment_destination_subscription.id-64ff6a63c6911261f6e58aef_sr9oWuFEFYG1DbdSSEVzB
  id = "64ff6a63c6911261f6e58aef:sr9oWuFEFYG1DbdSSEVzB"
}

resource "segment_destination_subscription" "id-64ff6a63c6911261f6e58aef_sr9oWuFEFYG1DbdSSEVzB" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "64ff6a63c6911261f6e58aef"
  enabled              = true
  model_id             = null
  name                 = "Track Calls- Audience Entered"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    enable_batching = false
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.timestamp"
    }
    user_alias = {}
  })
  trigger = "type = \"track\" and contains(event, \"Audience Entered\")"
}