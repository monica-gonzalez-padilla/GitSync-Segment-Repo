import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_jnDEqd8XtLituGN1ta2uMh
  id = "63b8ab11f9d33c81f73430ad:jnDEqd8XtLituGN1ta2uMh"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_jnDEqd8XtLituGN1ta2uMh" {
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
    eventName = "pe6318470_refi_application_started"
    occurredAt = {
      "@path" = "$.timestamp"
    }
    properties = {
      hs_page_url = {
        "@path" = "$.context.page.url"
      }
    }
  })
  trigger = "type = \"track\" and event = \"Refi Application Started\""
}