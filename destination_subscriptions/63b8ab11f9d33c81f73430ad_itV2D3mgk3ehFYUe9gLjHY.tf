import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_itV2D3mgk3ehFYUe9gLjHY
  id = "63b8ab11f9d33c81f73430ad:itV2D3mgk3ehFYUe9gLjHY"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_itV2D3mgk3ehFYUe9gLjHY" {
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
    eventName = "pe6318470_refi_contact_information_added"
    occurredAt = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\" and event = \"Refi Contact Information Added\""
}