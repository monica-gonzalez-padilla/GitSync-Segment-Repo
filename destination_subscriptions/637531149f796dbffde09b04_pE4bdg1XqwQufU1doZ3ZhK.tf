import {
  to = segment_destination_subscription.id-637531149f796dbffde09b04_pE4bdg1XqwQufU1doZ3ZhK
  id = "637531149f796dbffde09b04:pE4bdg1XqwQufU1doZ3ZhK"
}

resource "segment_destination_subscription" "id-637531149f796dbffde09b04_pE4bdg1XqwQufU1doZ3ZhK" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "637531149f796dbffde09b04"
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