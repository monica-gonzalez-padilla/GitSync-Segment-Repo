import {
  to = segment_destination_subscription.id-68ed4ebfe872a567bbca130e_rQPqF7VdsWwgm4kAjsHmNA
  id = "68ed4ebfe872a567bbca130e:rQPqF7VdsWwgm4kAjsHmNA"
}

resource "segment_destination_subscription" "id-68ed4ebfe872a567bbca130e_rQPqF7VdsWwgm4kAjsHmNA" {
  action_id            = "i9V1H1emvbxxNuwB5bdALx"
  destination_id       = "68ed4ebfe872a567bbca130e"
  enabled              = false
  model_id             = null
  name                 = "Sync To LinkedIn DMP Segment"
  reverse_etl_schedule = null
  settings = jsonencode({
    company = {
      "@path" = "$.traits.company"
    }
    country = {
      "@path" = "$.traits.country"
    }
    dmp_segment_name = {
      "@if" = {
        else = {
          "@path" = "$.context.personas.computation_key"
        }
        exists = {
          "@path" = "$.properties.audience_key"
        }
        then = {
          "@path" = "$.properties.audience_key"
        }
      }
    }
    dmp_user_action = "AUTO"
    email = {
      "@if" = {
        else = {
          "@path" = "$.traits.email"
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
    first_name = {
      "@path" = "$.traits.firstName"
    }
    google_advertising_id = {
      "@path" = "$.context.device.advertisingId"
    }
    last_name = {
      "@path" = "$.traits.lastName"
    }
    source_segment_id = {
      "@if" = {
        else = {
          "@path" = "$.context.personas.computation_key"
        }
        exists = {
          "@path" = "$.properties.audience_key"
        }
        then = {
          "@path" = "$.properties.audience_key"
        }
      }
    }
    title = {
      "@path" = "$.traits.title"
    }
  })
  trigger = "event = \"Audience Entered\" or event = \"Audience Exited\""
}