import {
  to = segment_destination_subscription.id-6717df6f8e285bae06f38889_uBxApjQxwsraRrZmvvpZmw
  id = "6717df6f8e285bae06f38889:uBxApjQxwsraRrZmvvpZmw"
}

resource "segment_destination_subscription" "id-6717df6f8e285bae06f38889_uBxApjQxwsraRrZmvvpZmw" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6717df6f8e285bae06f38889"
  enabled              = true
  model_id             = null
  name                 = "BLOCK Journey Not Completed"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/9c76d6d7-3bb2-4582-a25d-2ed87ba72db6"
  })
  trigger = "context.personas.event_emitter_id = \"ee_319ufRHn0CsmeMDc9eKwApRBbnA\""
}