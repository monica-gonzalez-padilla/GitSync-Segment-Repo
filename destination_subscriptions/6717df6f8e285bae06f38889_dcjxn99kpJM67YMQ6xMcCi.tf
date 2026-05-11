import {
  to = segment_destination_subscription.id-6717df6f8e285bae06f38889_dcjxn99kpJM67YMQ6xMcCi
  id = "6717df6f8e285bae06f38889:dcjxn99kpJM67YMQ6xMcCi"
}

resource "segment_destination_subscription" "id-6717df6f8e285bae06f38889_dcjxn99kpJM67YMQ6xMcCi" {
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
  trigger = "context.personas.event_emitter_id = \"ee_3C5Mi9VIMVdu3o0DKjviJMHnqhG\""
}