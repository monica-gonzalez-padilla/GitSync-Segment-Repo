import {
  to = segment_destination_subscription.id-679d103304f6deac069d0653_ws65DyyvtheNWJNi4GbScC
  id = "679d103304f6deac069d0653:ws65DyyvtheNWJNi4GbScC"
}

resource "segment_destination_subscription" "id-679d103304f6deac069d0653_ws65DyyvtheNWJNi4GbScC" {
  action_id            = "3MxuLcLqv1XvQS8iWuX3xZ"
  destination_id       = "679d103304f6deac069d0653"
  enabled              = false
  model_id             = null
  name                 = "Customer Match User List"
  reverse_etl_schedule = null
  settings = jsonencode({
    __segment_internal_sync_mode     = "add"
    ad_personalization_consent_state = "GRANTED"
    ad_user_data_consent_state       = "GRANTED"
    batch_size                       = 10000
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
    event_name = {
      "@path" = "$.event"
    }
    external_audience_id = {
      "@path" = "$.context.personas.external_audience_id"
    }
    external_id_type = "CONTACT_INFO"
    first_name = {
      "@if" = {
        else = {
          "@path" = "$.properties.firstName"
        }
        exists = {
          "@path" = "$.context.traits.firstName"
        }
        then = {
          "@path" = "$.context.traits.firstName"
        }
      }
    }
    last_name = {
      "@if" = {
        else = {
          "@path" = "$.properties.lastName"
        }
        exists = {
          "@path" = "$.context.traits.lastName"
        }
        then = {
          "@path" = "$.context.traits.lastName"
        }
      }
    }
    mobile_advertising_id = {
      "@path" = "$.context.device.advertisingId"
    }
    phone = {
      "@if" = {
        else = {
          "@path" = "$.properties.phone"
        }
        exists = {
          "@path" = "$.context.traits.phone"
        }
        then = {
          "@path" = "$.context.traits.phone"
        }
      }
    }
  })
  trigger = "event = \"Audience Entered\" and properties.audience_key = \"your audience key value\""
}