import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_gyRJ5nSaE3gBNnndZmaNdm
  id = "63b8ab11f9d33c81f73430ad:gyRJ5nSaE3gBNnndZmaNdm"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_gyRJ5nSaE3gBNnndZmaNdm" {
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
    eventName = "pe6318470_refi_application_complete"
    occurredAt = {
      "@path" = "$.timestamp"
    }
    properties = {
      hs_city = {
        "@path" = "$.context.location.city"
      }
      hs_page_url = {
        "@path" = "$.context.page.url"
      }
      hs_utm_source = {
        "@path" = "$.context.campaign.source"
      }
    }
  })
  trigger = "type = \"track\" and event = \"Refi Appplication Complete\""
}