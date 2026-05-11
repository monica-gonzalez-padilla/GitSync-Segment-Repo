import {
  to = segment_destination_subscription.id-6717df6f8e285bae06f38889_96nPMkfnZUASYfBjSGMcU3
  id = "6717df6f8e285bae06f38889:96nPMkfnZUASYfBjSGMcU3"
}

resource "segment_destination_subscription" "id-6717df6f8e285bae06f38889_96nPMkfnZUASYfBjSGMcU3" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6717df6f8e285bae06f38889"
  enabled              = true
  model_id             = null
  name                 = "Favor Delivery Test - Webhook Destination Gro"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/ea69b4de-38d4-41a8-a72c-d88518fa8c41"
  })
  trigger = "context.personas.event_emitter_id = \"ee_3BzxeAKHwXfNlkUI0jCQyjHYImB\""
}