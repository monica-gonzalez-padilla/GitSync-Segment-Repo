import {
  to = segment_destination_subscription.id-63b86c1067886e370e9cd7b5_jhTpgfY2FdZjCz4SFjZFHr
  id = "63b86c1067886e370e9cd7b5:jhTpgfY2FdZjCz4SFjZFHr"
}

resource "segment_destination_subscription" "id-63b86c1067886e370e9cd7b5_jhTpgfY2FdZjCz4SFjZFHr" {
  action_id            = "9cmB51ubHWyRFyhaCbYV8u"
  destination_id       = "63b86c1067886e370e9cd7b5"
  enabled              = true
  model_id             = null
  name                 = "Send Custom Behavioral Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    email = {
      "@if" = {
        else = {
          "@path" = "$.context.traits.email"
        }
        exists = {
          "@path" = "$.email"
        }
        then = {
          "@path" = "$.email"
        }
      }
    }
    eventName = {
      "@path" = "$.event"
    }
    occurredAt = {
      "@path" = "$.timestamp"
    }
    properties = {
      property1 = {
        "@path" = "$.properties.property1"
      }
    }
  })
  trigger = "type = \"track\" and event = \"pe6318470_form_submitted\""
}