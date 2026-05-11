import {
  to = segment_destination_subscription.id-64ff6a63c6911261f6e58aef_k4RjwgwZrajGnM6qntAbtB
  id = "64ff6a63c6911261f6e58aef:k4RjwgwZrajGnM6qntAbtB"
}

resource "segment_destination_subscription" "id-64ff6a63c6911261f6e58aef_k4RjwgwZrajGnM6qntAbtB" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "64ff6a63c6911261f6e58aef"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.properties.email"
        }
        exists = {
          "@path" = "$.context.traits.email"
        }
        then = {
          "@path" = "$.context.traits.email"
        }
      }
    }
    enable_batching = true
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
  trigger = "type = \"track\""
}