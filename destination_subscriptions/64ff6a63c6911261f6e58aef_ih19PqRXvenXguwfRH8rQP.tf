import {
  to = segment_destination_subscription.id-64ff6a63c6911261f6e58aef_ih19PqRXvenXguwfRH8rQP
  id = "64ff6a63c6911261f6e58aef:ih19PqRXvenXguwfRH8rQP"
}

resource "segment_destination_subscription" "id-64ff6a63c6911261f6e58aef_ih19PqRXvenXguwfRH8rQP" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "64ff6a63c6911261f6e58aef"
  enabled              = false
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@template" = "{{properties.braze_id}}"
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
      "@template" = "{{userId}}"
    }
    name = {
      "@template" = "{{event}}"
    }
    properties = {
      "@template" = "{{properties}}"
    }
    time = {
      "@template" = "{{receivedAt}}"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\""
}