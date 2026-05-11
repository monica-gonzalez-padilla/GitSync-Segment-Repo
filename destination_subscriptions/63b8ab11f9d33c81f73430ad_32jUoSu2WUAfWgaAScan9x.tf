import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_32jUoSu2WUAfWgaAScan9x
  id = "63b8ab11f9d33c81f73430ad:32jUoSu2WUAfWgaAScan9x"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_32jUoSu2WUAfWgaAScan9x" {
  action_id            = "9cmB51ubHWyRFyhaCbYV8u"
  destination_id       = "63b8ab11f9d33c81f73430ad"
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
          "@path" = "$.properties.email"
        }
        then = {
          "@path" = "$.properties.email"
        }
      }
    }
    eventName = "pe6318470_refinance_application"
    occurredAt = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\" and event = \"Refinance Application\""
}