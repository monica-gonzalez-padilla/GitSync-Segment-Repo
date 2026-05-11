import {
  to = segment_destination_subscription.id-63cb00cebcb579e70b5f843f_p7bKhEj5UPhRZT7i5FAuB4
  id = "63cb00cebcb579e70b5f843f:p7bKhEj5UPhRZT7i5FAuB4"
}

resource "segment_destination_subscription" "id-63cb00cebcb579e70b5f843f_p7bKhEj5UPhRZT7i5FAuB4" {
  action_id            = "9cmB51ubHWyRFyhaCbYV8u"
  destination_id       = "63cb00cebcb579e70b5f843f"
  enabled              = false
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
    eventName = "pe6318470_segment_audience"
    occurredAt = {
      "@path" = "$.timestamp"
    }
    properties = {
      audience_key_1 = {
        "@path" = "$.properties.name of your audience"
      }
      audience_key_2 = {
        "@path" = "$.properties.name of your audience 2"
      }
      audience_key_3 = {
        "@path" = "$.properties.audience_3"
      }
      audience_name = {
        "@path" = "$.properties.audience_key"
      }
    }
  })
  trigger = "type = \"track\" or event = \"Audience Entered\" or event = \"Audience Exited\""
}