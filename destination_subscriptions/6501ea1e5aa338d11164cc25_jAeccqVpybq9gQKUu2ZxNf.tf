import {
  to = segment_destination_subscription.id-6501ea1e5aa338d11164cc25_jAeccqVpybq9gQKUu2ZxNf
  id = "6501ea1e5aa338d11164cc25:jAeccqVpybq9gQKUu2ZxNf"
}

resource "segment_destination_subscription" "id-6501ea1e5aa338d11164cc25_jAeccqVpybq9gQKUu2ZxNf" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6501ea1e5aa338d11164cc25"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
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
  })
  trigger = "type = \"track\""
}