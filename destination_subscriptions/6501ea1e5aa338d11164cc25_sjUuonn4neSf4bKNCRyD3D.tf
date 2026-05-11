import {
  to = segment_destination_subscription.id-6501ea1e5aa338d11164cc25_sjUuonn4neSf4bKNCRyD3D
  id = "6501ea1e5aa338d11164cc25:sjUuonn4neSf4bKNCRyD3D"
}

resource "segment_destination_subscription" "id-6501ea1e5aa338d11164cc25_sjUuonn4neSf4bKNCRyD3D" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6501ea1e5aa338d11164cc25"
  enabled              = true
  model_id             = null
  name                 = "Track Calls- Audience entered"
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
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and contains(event, \"Audience Entered\")"
}