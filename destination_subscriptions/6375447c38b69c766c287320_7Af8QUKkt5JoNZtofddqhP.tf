import {
  to = segment_destination_subscription.id-6375447c38b69c766c287320_7Af8QUKkt5JoNZtofddqhP
  id = "6375447c38b69c766c287320:7Af8QUKkt5JoNZtofddqhP"
}

resource "segment_destination_subscription" "id-6375447c38b69c766c287320_7Af8QUKkt5JoNZtofddqhP" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "6375447c38b69c766c287320"
  enabled              = true
  model_id             = null
  name                 = "Custom Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    clientId = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    engagement_time_msec = 1
    lowercase            = false
    name = {
      "@path" = "$.event"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_properties = {
      "@path" = "$.properties"
    }
  })
  trigger = "type = \"track\""
}