import {
  to = segment_destination_subscription.id-6644f533698f3cc2727c2806_nbS6CwSUUjXrMuVcoNuqS1
  id = "6644f533698f3cc2727c2806:nbS6CwSUUjXrMuVcoNuqS1"
}

resource "segment_destination_subscription" "id-6644f533698f3cc2727c2806_nbS6CwSUUjXrMuVcoNuqS1" {
  action_id            = "f5syVWBeSA4KrrH3Yv5Q2N"
  destination_id       = "6644f533698f3cc2727c2806"
  enabled              = true
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size      = 1000
    enable_batching = true
    metric_name = {
      "@path" = "$.event"
    }
    profile = {
      "@path" = "$.traits"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.timestamp"
    }
    unique_id = {
      "@path" = "$.messageId"
    }
  })
  trigger = "type = \"track\""
}