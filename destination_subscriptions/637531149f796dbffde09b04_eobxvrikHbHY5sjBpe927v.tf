import {
  to = segment_destination_subscription.id-637531149f796dbffde09b04_eobxvrikHbHY5sjBpe927v
  id = "637531149f796dbffde09b04:eobxvrikHbHY5sjBpe927v"
}

resource "segment_destination_subscription" "id-637531149f796dbffde09b04_eobxvrikHbHY5sjBpe927v" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "637531149f796dbffde09b04"
  enabled              = false
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
    data_stream_type     = "Web"
    engagement_time_msec = 1
    lowercase            = false
    name = {
      "@path" = "$.event"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\""
}